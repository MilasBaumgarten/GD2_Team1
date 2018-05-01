using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explosion : MonoBehaviour {

    public GameObject explosionEffect;  //Partikeleffekt der Explosion
    public float radius;    //Explosionsradius
    public float explosionForce;    //Stärke der Explosionskraft
    public bool destructible;   //Objekt wird/wird nicht zerstört
    public bool debug;  //soll das Objekt zu Testzwecken dienen
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.E) && debug) //zum testen mit taste E explodieren lassen
        {
            Explode();  //Kaboom!
        }
	}

    public void Explode()
    {
        GameObject explosion = Instantiate(explosionEffect, transform.position, transform.rotation);   //Partikeleffekt erscheinen lassen

        Destroy(explosion, 2.0f);   //entfernt den Partikeleffekt (klon) nach 2 sekunden - potenziell änderbar mit variable falls nötig

        Collider[] colliders = Physics.OverlapSphere(transform.position, radius);   //Alle Collider im Explosionsradius in ein Array

        foreach(Collider hitObject in colliders)    //Auf alle Collider im Array wirken lassen
        {
            if(hitObject.tag == "Player")   //wenn der Spieler getroffen wird
            {
                hitObject.transform.position += Vector3.up * 0.01f; //leicht nach oben versetzen, damit der groundcheck im selben frame nicht stört
                hitObject.GetComponent<PlayerMovement>().player.isGrounded = false; //nicht mehr grounded (falls er nach oben fliegt, ansonsten wird eh wieder groundcheck ausgeführt)
            }

            Rigidbody rb = hitObject.GetComponent<Rigidbody>(); //Rigidbody (falls vorhanden) nehmen

            if (rb != null) //nur wenn ein Rigidbody vorhanden ist
            {
                rb.AddExplosionForce(explosionForce, transform.position, radius);   //eine Kraft mit der Stärke "explosionForce" auf den Rigidbody wirken lassen (AddExplosionForce übernimmt die Berechnungen)
            }
        }

        if (destructible)   //soll das Objekt verschwinden oder nicht?
        {
            Destroy(gameObject);  //lässt das Gameobject am Ende der Explosion verschwinden
        }
    }
}

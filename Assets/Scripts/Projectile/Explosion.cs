using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explosion : MonoBehaviour {

	public ExplosionScriptableObject explosionObject;

    public void Explode()
    {
        GameObject explosion = Instantiate(explosionObject.explosionEffect, transform.position, Quaternion.Euler(0,0,0));// transform.rotation);   //Partikeleffekt erscheinen lassen

        Destroy(explosion, explosionObject.effektLifeTime);   //entfernt den Partikeleffekt (klon) nach 2 sekunden - potenziell änderbar mit variable falls nötig

        Collider[] colliders = Physics.OverlapSphere(transform.position, explosionObject.radius);   //Alle Collider im Explosionsradius in ein Array

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
                rb.AddExplosionForce(explosionObject.explosionForce, transform.position, explosionObject.radius);   //eine Kraft mit der Stärke "explosionForce" auf den Rigidbody wirken lassen (AddExplosionForce übernimmt die Berechnungen)
            }
        }

        /*if (destructible)   //soll das Objekt verschwinden oder nicht?
        {
            Destroy(gameObject);  //lässt das Gameobject am Ende der Explosion verschwinden
        }*/
    }
}

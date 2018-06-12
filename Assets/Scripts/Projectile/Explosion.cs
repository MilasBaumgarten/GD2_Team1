using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explosion : MonoBehaviour
{

    public ExplosionScriptableObject explosion;

    public void Explode(RaycastHit hit)
    {
		// berechne Rotation für die Explosion, damit sie immer von der Oberfläche des Aufprallpunktes weggeht
		Vector3 normal = hit.normal;
		Quaternion rotation = Quaternion.LookRotation(Vector3.ProjectOnPlane(Vector3.up, normal));	// Normale ist immer oben

		GameObject instance = Instantiate(explosion.explosionEffect, this.transform.position, rotation); //Partikeleffekt erscheinen lassen

        Destroy(instance, explosion.effektLifeTime);   //entfernt den Partikeleffekt (klon) nach 2 sekunden - potenziell änderbar mit variable falls nötig

        Collider[] colliders = Physics.OverlapSphere(this.transform.position, explosion.radius);   //Alle Collider im Explosionsradius in ein Array

        foreach (Collider hitObject in colliders)    //Auf alle Collider im Array wirken lassen
        {
            if (hitObject.tag == "Player")   //wenn der Spieler getroffen wird
            {
                PlayerMovement pc = hitObject.GetComponent<PlayerMovement>();   //Movement-Script abgreifen

                if (pc != null) //wenn der Player das nötige Script hat
                {
                    Vector3 dist = Camera.main.transform.position - instance.transform.position; //Richtung der Bewegung feststellen
                    pc.Push(dist.normalized * explosion.explosionForce * Mathf.Pow((1-(dist.magnitude / explosion.radius)), explosion.dropOff)); //Spieler in diese Richtung pushen
                }
            }
        }

        /*if (destructible)   //soll das Objekt verschwinden oder nicht?
        {
            Destroy(gameObject);  //lässt das Gameobject am Ende der Explosion verschwinden
        }*/
    }

    public void Absorb(RaycastHit hit)
    {
        // berechne Rotation für die Explosion, damit sie immer von der Oberfläche des Aufprallpunktes weggeht
        Vector3 normal = hit.transform.TransformDirection(hit.normal);
        Quaternion rotation = Quaternion.LookRotation(Vector3.ProjectOnPlane(Vector3.up, normal));  // Normale ist immer oben

        GameObject instance = Instantiate(explosion.absorbEffect, this.transform.position, rotation); //Partikeleffekt erscheinen lassen

        Destroy(instance, explosion.effektLifeTime);   //entfernt den Partikeleffekt (klon) nach 2 sekunden - potenziell änderbar mit variable falls nötig
    }
}

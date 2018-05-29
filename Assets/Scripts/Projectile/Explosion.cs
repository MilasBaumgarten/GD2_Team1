using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explosion : MonoBehaviour
{

    public ExplosionScriptableObject explosionObject;

    public void Explode(RaycastHit hit)
    {
		// berechne Rotation für die Explosion, damit sie immer von der Oberfläche des Aufprallpunktes weggeht
		Vector3 normal = hit.normal;
		Quaternion rotation = Quaternion.LookRotation(Vector3.ProjectOnPlane(Vector3.up, normal));	// Normale ist immer oben

		GameObject explosion = Instantiate(explosionObject.explosionEffect, transform.position, rotation); //Partikeleffekt erscheinen lassen

        Destroy(explosion, explosionObject.effektLifeTime);   //entfernt den Partikeleffekt (klon) nach 2 sekunden - potenziell änderbar mit variable falls nötig

        Collider[] colliders = Physics.OverlapSphere(transform.position, explosionObject.radius);   //Alle Collider im Explosionsradius in ein Array

        foreach (Collider hitObject in colliders)    //Auf alle Collider im Array wirken lassen
        {
            if (hitObject.tag == "Player")   //wenn der Spieler getroffen wird
            {
                PlayerMovement pc = hitObject.GetComponent<PlayerMovement>();   //Movement-Script abgreifen

                if (pc != null) //wenn der Player das nötige Script hat
                {
                    Vector3 dist = hitObject.transform.position - explosion.transform.position; //Richtung der Bewegung feststellen
                    pc.Push(dist.normalized * explosionObject.explosionForce * Mathf.Clamp(1.0f - (dist.magnitude / explosionObject.radius), 0.0f, 1.0f)); //Spieler in diese Richtung pushen
                }
            }
        }

        /*if (destructible)   //soll das Objekt verschwinden oder nicht?
        {
            Destroy(gameObject);  //lässt das Gameobject am Ende der Explosion verschwinden
        }*/
    }
}

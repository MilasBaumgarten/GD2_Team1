using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileMove : MonoBehaviour
{
    public ProjectileScriptableObject projectile;
    public Vector3 destination;

    private float distance;
    void Update()
    {
        //Vorwaertsbewegung des Projektils
        float step = projectile.projectileSpeed * Time.deltaTime;
        transform.position = Vector3.MoveTowards(transform.position, destination, step);
        
        //Abstandsberechnung zwischen Projektil und Ziel
        distance = Vector3.Distance(transform.position, destination);
        
        //Zerstoerung des Projektils kurz vor dem Zielpunkt und Aufruf von Explosion
        if(distance < .01f)
        {
			Explode();
            Destroy(gameObject);
        }
    }


	private void Explode() {
		GetComponent<Explosion>().Explode();
	}
}

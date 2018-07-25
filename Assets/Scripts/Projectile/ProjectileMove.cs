using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileMove : MonoBehaviour
{
    public ProjectileScriptableObject projectile;
    public RaycastHit hit;

    private float distance;
    void Update()
    {
        //Vorwaertsbewegung des Projektils
        float step = projectile.projectileSpeed * Time.deltaTime;
        transform.position = Vector3.MoveTowards(transform.position, hit.point, step);

        //Abstandsberechnung zwischen Projektil und Ziel
        distance = Vector3.Distance(transform.position, hit.point);

        //Zerstoerung des Projektils kurz vor dem Zielpunkt und Aufruf von Explosion
        if (distance < .01f)
        {
            if (hit.transform.tag == "Absorb")
            {
                Absorb();
            }
            else
            {
                Explode();
            }

            Destroy(gameObject);
        }
    }

    private void Absorb()
    {
        GetComponent<Explosion>().Absorb(hit);
    }

    private void Explode()
    {
        GetComponent<Explosion>().Explode(hit);
    }
}

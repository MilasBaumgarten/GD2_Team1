using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileMove : MonoBehaviour
{
    public float speed;
    public LayerMask layerMask;
    public Vector3 destination;

    private float distance;

    // Use this for initialization
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float step = speed * Time.deltaTime;
        transform.position = Vector3.MoveTowards(transform.position, destination, step);
        distance = Vector3.Distance(transform.position, destination);
        if(distance < .01f)                     
        {
            Destroy(gameObject);
            //Explode
        }
    }
}

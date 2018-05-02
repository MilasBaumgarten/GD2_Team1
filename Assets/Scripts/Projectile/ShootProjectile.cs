using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShootProjectile : MonoBehaviour {



    [Tooltip("Ammo")]
    public int  maxAmmo = 5;
    public GameObject projectile;
    //public int Range = 100;
    public Camera cam;
    public RaycastHit hit;
    public float fireRate = 1f;

    private float nextFire = 0.0f;
    LayerMask mask = ~0;
    private int currentAmmo;
   

    void Start()
    {
        currentAmmo = maxAmmo;
    }

    void Update ()
    {
        if (Input.GetButtonDown("Fire1") && currentAmmo > 0 && Time.time > nextFire)
        {
            Fire();
        }

        if (Input.GetKeyDown(KeyCode.R))
        {
            Reload();
        }
	}

    void Fire()
    {
        Ray position = cam.ScreenPointToRay(Input.mousePosition);
        Physics.Raycast(position,out hit, Mathf.Infinity,mask);
        Debug.Log(hit.point);

        GameObject spawn = Instantiate(projectile, transform.position, transform.rotation);
        spawn.GetComponent<ProjectileMove>().destination = hit.point;
        Destroy(spawn, 10);
        currentAmmo--;
        nextFire = Time.time + fireRate;
    }

    void Reload()
    {
        currentAmmo = maxAmmo;
    }
}

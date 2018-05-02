using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShootProjectile : MonoBehaviour {
    [Tooltip("Ammo")]
    public int  maxAmmo = 5;
    public GameObject projectile;
    public float fireRate = 1f;

	[SerializeField]
	LayerMask mask;

	private float nextFire = 0.0f;
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
		RaycastHit hit;
		Vector3 destination;
		Ray shootDirection = new Ray(transform.position, transform.forward);    // sollte simpler sein als Input.mousePosition

		// finde Zielpunkt der Rakete
		if (Physics.Raycast(shootDirection, out hit, Mathf.Infinity, mask)) {
			destination = hit.point;
		} else {
			destination = transform.forward * 1000 + transform.position;
		}

		// schieße Rakete ab
		GameObject spawn = Instantiate(projectile, transform.position, transform.rotation);
		spawn.GetComponent<ProjectileMove>().destination = destination;
		Destroy(spawn, 10);
		currentAmmo--;
		nextFire = Time.time + fireRate;
	}

    void Reload()
    {
        currentAmmo = maxAmmo;
    }
}

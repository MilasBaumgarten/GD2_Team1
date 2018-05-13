using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShootProjectile : MonoBehaviour {

    public ProjectileScriptableObject projectile;

	private float nextFire = 0.0f;
    private int currentAmmo;

    private GiveAudioSource source;

    void Start()
    {
        //Anfangs volle Munition
        currentAmmo = projectile.maxAmmo;
        //Holt AudioSource
        source = GetComponent<GiveAudioSource>();
    }

    void Update ()
    {
        if (Input.GetButtonDown("Fire1") && currentAmmo > 0 && Time.time > nextFire && Time.timeScale > 0)
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
		if (Physics.Raycast(shootDirection, out hit, Mathf.Infinity, projectile.mask)) {
			destination = hit.point;
		} else {
			destination = transform.forward * 1000 + transform.position;
		}

		// schieße Rakete ab
		GameObject spawn = Instantiate(projectile.rocket, transform.position, transform.rotation);
		spawn.GetComponent<ProjectileMove>().destination = destination;

        //Spielt Soundeffekt ab
        source.Play();

        // Zerstoerung der nicht auftreffenden Projektile nach 10 Sekunden
        Destroy(spawn, 10);

        //Munition -1 außer unendlich Munition ist aktiviert
        if (projectile.infAmmo == false)
        {
            currentAmmo--;
        }

        //Zeit vor erneutem schießen
		nextFire = Time.time + projectile.fireRate;
	}

    void Reload()
    {
        currentAmmo = projectile.maxAmmo;
    }

}

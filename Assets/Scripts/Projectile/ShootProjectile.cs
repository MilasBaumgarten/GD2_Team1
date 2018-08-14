using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShootProjectile : MonoBehaviour {

    public ProjectileScriptableObject projectile;
    public PlayerScriptableObject player;

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
        if (Input.GetButtonDown("Fire1") && currentAmmo > 0 && nextFire <= 0)
        {
            Fire();
        }

        if (player.isGrounded && currentAmmo < projectile.maxAmmo)
        {
            Reload();
        }

        if(nextFire > 0)
        {
            nextFire -= Time.deltaTime;
        }
	}

    void Fire()
    {
		RaycastHit hit;
		Ray shootDirection = new Ray(transform.position, transform.forward);    // sollte simpler sein als Input.mousePosition

		// finde Zielpunkt der Rakete
		if (Physics.Raycast(shootDirection, out hit, Mathf.Infinity, projectile.mask)) {
			// Ziel gefunden
		} else {
			// Spieler schießt in Leere
			hit.point = transform.forward * 1000 + transform.position;
		}

		// schieße Rakete ab
		GameObject spawn = Instantiate(projectile.rocket, transform.position, transform.rotation);
		spawn.GetComponent<ProjectileMove>().hit = hit;

        nextFire += projectile.fireRate;

        //Spielt Soundeffekt ab
        source.Play();

        // Zerstoerung der nicht auftreffenden Projektile nach 10 Sekunden
        Destroy(spawn, 10);

        //Munition -1 außer unendlich Munition ist aktiviert
        if (projectile.infAmmo == false)
        {
            currentAmmo--;
        }
	}

    void Reload()
    {
        currentAmmo = projectile.maxAmmo;
    }

}

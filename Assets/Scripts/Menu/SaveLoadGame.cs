using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class SaveLoadGame : MonoBehaviour {

    //public Transform tPlayer;
    public ProjectileScriptableObject projectile;
    public PlayerScriptableObject player;
    public ExplosionScriptableObject explosion;

    //Spielerposition speichern
    //
    //      Auskommentiert da vorerst nicht mehr benötigt
    //
	/*public void SavePlayerPosition()
    {
        PlayerPrefs.SetFloat("x", tPlayer.position.x);
        PlayerPrefs.SetFloat("y", tPlayer.position.y);
        PlayerPrefs.SetFloat("z", tPlayer.position.z);
        PlayerPrefs.SetFloat("camY", tPlayer.eulerAngles.y);
    }*/
    //Settings speichern
    public void SaveSettings()
    {
        PlayerPrefs.SetFloat("projectileSpeed", projectile.projectileSpeed);
        PlayerPrefs.SetInt("maxAmmo", projectile.maxAmmo);
        PlayerPrefs.SetFloat("fireRate", projectile.fireRate);
        PlayerPrefs.SetInt("infAmmo", Convert.ToInt32(projectile.infAmmo));
        PlayerPrefs.SetFloat("jumpForce", player.jumpSpeed);
        PlayerPrefs.SetFloat("maxMovementSpeed", player.moveSpeed);
        PlayerPrefs.SetFloat("h_sens", player.h_sens);
        PlayerPrefs.SetFloat("v_sens", player.v_sens);
        PlayerPrefs.SetFloat("explosionForce", explosion.explosionForce);
        PlayerPrefs.SetFloat("explosionRadius", explosion.radius);
    }

    //
    //      Auskommentiert da vorerst nicht mehr benötigt
    //
    //Spielerposition laden
    /*public void LoadPlayerPosition()
    {
        tPlayer.position = new Vector3(PlayerPrefs.GetFloat("x"), PlayerPrefs.GetFloat("y"), PlayerPrefs.GetFloat("z"));
        tPlayer.eulerAngles = new Vector3(0, PlayerPrefs.GetFloat("camY"), 0);
    }*/
    //Settings laden
    public void LoadSettings()
    {
        projectile.projectileSpeed = PlayerPrefs.GetFloat("projectileSpeed");
        projectile.maxAmmo = PlayerPrefs.GetInt("maxAmmo");
        projectile.fireRate = PlayerPrefs.GetFloat("fireRate");
        projectile.infAmmo = Convert.ToBoolean(PlayerPrefs.GetInt("infAmmo"));
        player.jumpSpeed = PlayerPrefs.GetFloat("jumpForce");
        player.moveSpeed = PlayerPrefs.GetFloat("maxMovementSpeed");
        player.h_sens = PlayerPrefs.GetFloat("h_sens");
        player.v_sens = PlayerPrefs.GetFloat("v_sens");
        explosion.explosionForce = PlayerPrefs.GetFloat("explosionForce");
        explosion.radius = PlayerPrefs.GetFloat("explosionRadius");

        //Textfelder aktualisieren
        GetComponent<ChangeGameSettings>().updateSettings();
    }
}

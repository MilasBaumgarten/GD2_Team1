using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
//Dieses Skript ändert die jeweiligen Einstellungsrelevanten Variablen
public class ChangeGameSettings : MonoBehaviour {

   

    public ProjectileScriptableObject projectile;
    public PlayerScriptableObject player;
    public ExplosionScriptableObject explosion;

    public InputField projectileSpeed;
    public InputField ammo;
    public InputField fireRate;
    public InputField jumpForce;
    public InputField movementSpeed;
    public InputField explosionForce;
    public InputField explosionRadius;
    


    //Startwerte für die Settings abfragen
    private void Start()
    {
        projectileSpeed.text = string.Format("{0:N2}", projectile.projectileSpeed);
        ammo.text = string.Format("{0}", projectile.maxAmmo);
        fireRate.text = string.Format("{0:N2}", projectile.fireRate);
        jumpForce.text = string.Format("{0:N2}", player.jumpForce);
        movementSpeed.text = string.Format("{0:N2}", player.maxMoveSpeed);
        explosionForce.text = string.Format("{0:N2}", explosion.explosionForce);
        explosionRadius.text = string.Format("{0:N2}", explosion.radius);
    }


    //keine munitionseingabe möglich machen, unendlich munition aktiviert ist
    private void Update()
    {
        if(projectile.infAmmo == true)
        {
            ammo.interactable = false;
        }
        else
        {
            ammo.interactable = true;
        }
    }

    //***********************
    //*****Werte aendern*****
    //***********************

    //Lautstärke anpassen
    public void setVolume(float value)
    {
        AudioListener.volume = value;
    }

    //Projektilvariablen
    public void setProjectileSpeed(string newText)
    {
        float temp = float.Parse(newText);
        projectile.projectileSpeed = temp;
    }

    public void setMaxAmmo(string newText)
    {
        int temp = int.Parse(newText);
        projectile.maxAmmo = temp;
    }

    public void setFireRate(string newText)
    {
        float temp = float.Parse(newText);
        projectile.fireRate = temp;
    }

    public void setInfAmmo(bool newBool)
    {
        projectile.infAmmo = newBool;
    }

    //Playervariablen
    public void setMaxSpeed(string newText)
    {
        float temp = float.Parse(newText);
        player.maxMoveSpeed = temp;
    }

    public void setJumpForce(string newText)
    {
        float temp = float.Parse(newText);
        player.jumpForce = temp;
    }

    public void setMouseSensitivity (float value)
    {
        player.h_sens = value;
        player.v_sens = value;
    }

    //Explosionsvariablen
    public void setExplosionRadius(string newText)
    {
        float temp = float.Parse(newText);
        explosion.radius = temp;
    }

    public void setExplosionForce(string newText)
    {
        float temp = float.Parse(newText);
        explosion.explosionForce = temp;
    }


}

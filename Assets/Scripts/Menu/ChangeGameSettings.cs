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
    public Toggle infAmmo;

    public Slider mouseSensitivity;

    //Startwerte für die Settings abfragen
    private void Start()
    {
        updateSettings();
    }

    //erzwingt das aktualisieren der Settingstextfelder
    public void updateSettings()
    {
        projectileSpeed.text = string.Format("{0:N2}", projectile.projectileSpeed);
        ammo.text = string.Format("{0}", projectile.maxAmmo);
        fireRate.text = string.Format("{0:N2}", projectile.fireRate);
        jumpForce.text = string.Format("{0:N2}", player.jumpSpeed);
        movementSpeed.text = string.Format("{0:N2}", player.moveSpeed);
        explosionForce.text = string.Format("{0:N2}", explosion.explosionForce);
        explosionRadius.text = string.Format("{0:N2}", explosion.radius);
        mouseSensitivity.value = player.v_sens;

        if (projectile.infAmmo == true)//keine munitionseingabe möglich machen, unendlich munition aktiviert ist
        {
            ammo.interactable = false;
            infAmmo.isOn = true;
        }
        else
        {
            ammo.interactable = true;
            infAmmo.isOn = false;
        }
    }

    //***********************
    //*****Werte aendern*****
    //***********************

    //Lautstärke anpassen, Funktioniert noch nicht bzw. muss noch mit passenden Audiokanaelen umgesetzt werden -> Kanal fuer sfx und musik
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

        //keine munitionseingabe möglich machen, unendlich munition aktiviert ist
        if (projectile.infAmmo == true)
        {
            ammo.interactable = false;
        }
        else
        {
            ammo.interactable = true;
        }
    }

    //Playervariablen
    public void setMaxSpeed(string newText)
    {
        float temp = float.Parse(newText);
        player.moveSpeed = temp;
    }

    public void setJumpForce(string newText)
    {
        float temp = float.Parse(newText);
        player.jumpSpeed = temp;
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

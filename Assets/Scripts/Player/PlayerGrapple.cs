using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerGrapple : MonoBehaviour
{

    public PlayerScriptableObject player;   // ScriptableObject vom Spieler (duh)

    private void Start()
    {
        player.isGrappled = false;
        player.grappleTarget = null;
    }

    void Update()
    {
        if (Input.GetKeyDown(player.grappleButton))   // bei vorhandenem Ziel und Drücken der Taste zum Grapplen wird eingehakt
        {
            if(player.grappleTarget != null)
            {
                player.isGrappled = true;
            }
            else
            {
                player.isGrappled = false;
                player.grappleTarget = null;
            }
        }
    }
}

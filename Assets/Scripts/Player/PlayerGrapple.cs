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
        if (Input.GetKeyDown(player.grappleButton))   //Spieler drückt taste zum grapplen
        {
            if (player.isGrappled)  //wenn Spieler bereits grappled lässt er los
            {
                player.isGrappled = false;
            }
            else
            {
                if (player.grappleIndicator.activeSelf) //ansonsten bei vorhandenem Anker den Anker grapplen
                {
                    player.isGrappled = true;
                    player.anchorPosition = player.grappleTarget.transform.position;
                    player.grappleDistance = (this.transform.position - player.anchorPosition).magnitude;
                }
            }
        }

        if (player.isGrappled)
        {
            float input = (Input.GetKey(KeyCode.LeftShift) ? 1 : 0) + (Input.GetKey(KeyCode.LeftControl) ? -1 : 0);
            player.grappleDistance = Mathf.Clamp(player.grappleDistance + input * player.reelInSpeed, 10.0f, player.maxGrappleDistance);
        }
    }
}

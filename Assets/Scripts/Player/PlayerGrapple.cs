using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(LineRenderer))]
public class PlayerGrapple : MonoBehaviour
{

    public PlayerScriptableObject player;   // ScriptableObject vom Spieler (duh)
    public Transform hand;
    private LineRenderer lineRenderer;

    private void Start()
    {
        player.isGrappled = false;
        player.grappleTarget = null;
        lineRenderer = GetComponent<LineRenderer>();
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

            if (player.anchorPosition != null)
            {
                if (!lineRenderer.enabled)
                {
                    lineRenderer.SetPositions(new Vector3[2] { hand.position, player.anchorPosition});
                    lineRenderer.enabled = true;
                }
                else
                {
                    lineRenderer.SetPosition(0, hand.position);
                }
            }
        }
        else
        {
            if (lineRenderer.enabled)
            {
                lineRenderer.enabled = false;
            }
        }
    }
}

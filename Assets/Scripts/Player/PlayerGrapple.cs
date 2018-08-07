using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(LineRenderer))]
public class PlayerGrapple : MonoBehaviour
{

    public PlayerScriptableObject player;   // ScriptableObject vom Spieler (duh)
    public Transform tetherOrigin;
    public Transform tetherEnd;
    public Transform arm;
    public Transform hand;
    private Vector3 handPos;
    private Vector3 grappleDist;
    private Vector3 grappleDir;
    private LineRenderer lineRenderer;
    private bool handDetached;
    private bool isAttached;

    private void Start()
    {
        player.isGrappled = false;
        player.grappleTarget = null;
        lineRenderer = GetComponent<LineRenderer>();
        handPos = hand.localPosition;
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
            //arm richtung ankerpunk rotieren

            if (!handDetached)
            {
                grappleDist = (player.anchorPosition - hand.position);
                grappleDir = grappleDist.normalized * player.grappleSpeed;
                handDetached = true;
            }
            if (!isAttached)
            {
                if (grappleDist.magnitude < grappleDir.magnitude)
                {
                    hand.position = player.anchorPosition;
                    isAttached = true;
                }
                else
                {
                    hand.position = player.anchorPosition - grappleDist;
                    grappleDist -= grappleDir;
                }
            }
            else
            {
                hand.position = player.anchorPosition;
                float input = (Input.GetKey(KeyCode.LeftShift) ? -1 : 0) + (Input.GetKey(KeyCode.LeftControl) ? 1 : 0);
                player.grappleDistance = Mathf.Clamp(player.grappleDistance + input * player.reelInSpeed, 10.0f, player.maxGrappleDistance);
            }

            if (player.anchorPosition != null)
            {
                if (!lineRenderer.enabled)
                {

                    lineRenderer.enabled = true;
                }

                lineRenderer.SetPositions(new Vector3[2] { tetherEnd.position, tetherOrigin.position });
            }
        }
        else
        {
            hand.localPosition = handPos;
            handDetached = false;
            isAttached = false;
            if (lineRenderer.enabled)
            {
                lineRenderer.enabled = false;
            }
        }
    }
}

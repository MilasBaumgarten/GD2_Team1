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
    private Transform handParent;
    private Quaternion handRot;
    private Vector3 handPos;
    private Vector3 grappleDist;
    private Vector3 grappleDir;
    private LineRenderer lineRenderer;
    

    private void Start()
    {
        player.isGrappling = false;
        player.isAttached = false;
        player.grappleTarget = null;
        lineRenderer = GetComponent<LineRenderer>();
        handRot = hand.localRotation;
        handPos = hand.localPosition;
        handParent = hand.parent;
    }

    void Update()
    {
        if (Input.GetKeyDown(player.grappleButton))   //Spieler drückt taste zum grapplen
        {
            if (player.isGrappling)  //wenn Spieler bereits grappled lässt er los
            {
                player.isGrappling = false;
            }
            else
            {
                if (player.grappleIndicator.activeSelf) //ansonsten bei vorhandenem Anker den Anker grapplen
                {
                    player.isGrappling = true;
                    if (player.grappleTarget != null)
                    {
                        player.anchorPosition = player.grappleTarget.transform.position;
                    }
                    player.grappleDistance = (this.transform.position - player.anchorPosition).magnitude;
                }
            }
        }

        if (player.isGrappling)
        {
            //arm richtung ankerpunk rotieren

            if (!player.handDetached)
            {
                grappleDist = (player.anchorPosition - hand.position);
                grappleDir = grappleDist.normalized * player.grappleSpeed * Time.deltaTime;
                hand.parent = null;
                player.handDetached = true;
            }
            if (!player.isAttached)
            {
                if (grappleDist.magnitude < grappleDir.magnitude)
                {
                    hand.position = player.anchorPosition;
                    player.isAttached = true;
                }
                else
                {
                    hand.position += grappleDir;
                    grappleDist -= grappleDir;
                }
            }
            else
            {
                hand.position = player.anchorPosition;
                float input = (Input.GetKey(KeyCode.LeftShift) ? -1 : 0) + (Input.GetKey(KeyCode.LeftControl) ? 1 : 0);
                player.grappleDistance = Mathf.Clamp(player.grappleDistance + input * player.reelInSpeed, 10.0f, player.maxGrappleDistance);
            }
        }
        else
        {
            if (player.handDetached)
            {
                if (player.isAttached)
                {
                    player.isAttached = false;
                }
                else
                {
                    if (grappleDist.magnitude < (handParent.TransformPoint(handPos) - hand.position).magnitude)
                    {
                        hand.position -= Vector3.Project(grappleDist - (handParent.TransformPoint(handPos) - hand.position), grappleDir);
                    }
                }

                grappleDist = handParent.TransformPoint(handPos) - hand.position;
                grappleDir = grappleDist.normalized * player.grappleSpeed * Time.deltaTime;

                if (grappleDist.magnitude < grappleDir.magnitude)
                {
                    hand.parent = handParent;
                    hand.localRotation = handRot;
                    hand.localPosition = handPos;
                    player.handDetached = false;
                }
                else
                {
                    hand.position += grappleDir;
                    grappleDist -= grappleDir;
                }

                hand.LookAt(handParent.TransformPoint(handPos));
            }
            else
            {
                if (lineRenderer.enabled)
                {
                    lineRenderer.enabled = false;
                }
            }
        }
        if (!lineRenderer.enabled)
        {

            lineRenderer.enabled = true;
        }

        lineRenderer.SetPositions(new Vector3[2] { tetherEnd.position, tetherOrigin.position });
    }
}

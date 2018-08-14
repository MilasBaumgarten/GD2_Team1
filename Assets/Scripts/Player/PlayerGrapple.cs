using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(LineRenderer))]
public class PlayerGrapple : MonoBehaviour
{
    struct HandTransform    //ist übersichtlicher
    {
        public Vector3 localPosition;
        public Quaternion localRotation;
        public Vector3 localScale;
        public Transform parent;
    }

    public PlayerScriptableObject player;   // ScriptableObject vom Spieler (duh)
    public Transform tetherOrigin;  //Anfangspunkt der Kette
    public Transform tetherEnd;     //Endpunkt der Kette
    public Transform arm;           //der Arm (Launcher)
    public Transform hand;          //die Hand
    private HandTransform tmpHand;  //"Kopie" des Transforms der Hand zum zurücksetzen
    private Vector3 grappleDist;    //Entfernung zwischen Hand und Ziel
    private Vector3 grappleDir;     //Bewegungsrichtung der Hand
    private LineRenderer lineRenderer;  //Linerenderer für die Kette


    private void Start()
    {
        //Initialisieren
        player.isGrappling = false;
        player.isAttached = false;
        player.grappleTarget = null;
        lineRenderer = GetComponent<LineRenderer>();
        tmpHand.localPosition = hand.localPosition;
        tmpHand.localRotation = hand.localRotation;
        tmpHand.localScale = hand.localScale;
        tmpHand.parent = hand.parent;
    }

    void Update()
    {
        if (Input.GetKeyDown(player.grappleButton) || Input.GetKeyDown(player.altGrappleButton))   //Spieler drückt taste zum grapplen
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
                        player.anchorPosition = player.grappleTarget.transform.position;    //Ankerposition festlegen
                    }
                    player.grappleDistance = (this.transform.position - player.anchorPosition).magnitude;   //grappleDistance auf derzeitige Entfernung zum Ankerpunkt setzen
                }
            }
        }

        if (player.isGrappling)
        {


            if (!player.handDetached) //Hand muss ab
            {
                grappleDist = (player.anchorPosition - hand.position);  //Verbindungsvektor zum Ankerpunkt
                grappleDir = grappleDist.normalized * player.grappleSpeed * Time.deltaTime; //Bewegungsrichtung der Hand
                hand.parent = null; //Hand ablösen
                player.handDetached = true; //Hand ist ab
            }
            else
            {
                Vector3 dir = hand.position - arm.position; //Richtung in die der Arm zeigen soll

                //Richtung nach hinten und quer über den Bildschirm verhindern
                dir = this.transform.InverseTransformDirection(dir);
                dir.z = Mathf.Clamp(dir.z, 0.0f, Mathf.Infinity);
                dir.x = Mathf.Clamp(dir.x, 0.0f, Mathf.Infinity);
                dir = this.transform.TransformDirection(dir);

                Quaternion rotDir = Quaternion.LookRotation(dir, Vector3.Cross(Vector3.Cross(Vector3.ProjectOnPlane(dir, Vector3.up), Vector3.up), dir));  //Rotation des Arms
                arm.rotation = Quaternion.Slerp(arm.rotation, rotDir, Time.deltaTime * 10.0f);  //arm rotieren

                //  --* Arm kann sich immernoch um die eigene Achse drehen wenn er senkrecht nach oben/unten zeigt.... *--
            }
            if (!player.isAttached) //hängt der Spieler am Ankerpunkt?
            {
                if (grappleDist.magnitude < grappleDir.magnitude)   //ist der Akerpunkt in Reichweite der Hand?
                {
                    //Hand "greift sich" den Ankerpunkt
                    hand.position = player.anchorPosition;
                    player.isAttached = true;
                }
                else
                {
                    //Hand zum Ankerpunkt bewegen
                    hand.position += grappleDir;
                    grappleDist -= grappleDir;
                }
            }
            else
            {
                hand.GetComponentInChildren<MeshRenderer>().enabled = false; //Hand im Kristall soll nicht gerendert werden

                //Grappledistanz länger/kürzer werden lassen
                float input = (Input.GetKey(player.reelInButton) ? -1 : 0) + (Input.GetKey(player.reelOutButton) ? 1 : 0);
                player.grappleDistance = Mathf.Clamp(player.grappleDistance + input * player.reelInSpeed, 10.0f, player.maxGrappleDistance);
            }
        }
        else
        {
            if (arm.localRotation != Quaternion.identity)   //Arm in Ursprungsrichtung rotieren
            {
                arm.localRotation = Quaternion.Slerp(arm.localRotation, Quaternion.identity, Time.deltaTime * 10);
            }

            if (player.handDetached)
            {
                if (player.isAttached)
                {
                    player.isAttached = false;
                    hand.GetComponentInChildren<MeshRenderer>().enabled = true; //Hand wird beim zurückkommen wieder angezeigt
                }
                else
                {
                    if (grappleDist.magnitude < (tmpHand.parent.TransformPoint(tmpHand.localPosition) - hand.position).magnitude) //Verhindern dass der Spieler vor seiner eigenen Hand weglaufen kann xD
                    {
                        hand.position -= Vector3.Project(grappleDist - (tmpHand.parent.TransformPoint(tmpHand.localPosition) - hand.position), grappleDir);
                    }
                }

                grappleDist = tmpHand.parent.TransformPoint(tmpHand.localPosition) - hand.position; //Entfernung der Hand zum Arm
                grappleDir = grappleDist.normalized * player.grappleSpeed * Time.deltaTime; //Bewegungsrichtung zum Arm

                if (grappleDist.magnitude < grappleDir.magnitude)   //ist der Arm ist in reichweite der Hand?
                {
                    //Hand an den Arm anfügen (und Werte zurücksetzen)
                    hand.parent = tmpHand.parent;
                    hand.localRotation = tmpHand.localRotation;
                    hand.localPosition = tmpHand.localPosition;
                    hand.localScale = tmpHand.localScale;
                    player.handDetached = false;
                }
                else
                {
                    //Hand zum Arm bewegen
                    hand.position += grappleDir;
                    grappleDist -= grappleDir;
                }

                hand.LookAt(tmpHand.parent.TransformPoint(tmpHand.localPosition)); //Handgelenk in Richtung arm zeigen lassen
            }
            else
            {
                if (lineRenderer.enabled)   //Kette wieder unsichtbar machen
                {
                    lineRenderer.enabled = false;
                }
            }
        }
        if (!lineRenderer.enabled)  //Kette sichtbar machen
        {

            lineRenderer.enabled = true;
        }

        lineRenderer.SetPositions(new Vector3[2] { tetherEnd.position, tetherOrigin.position });    //Positionen des Linerenderes updaten
    }
}

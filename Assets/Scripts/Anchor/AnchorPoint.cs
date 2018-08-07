using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnchorPoint : MonoBehaviour
{
    public PlayerScriptableObject player; //Das PlayerScriptableObject halt
    private GameObject playerObject; //Das GameObject des Spielers
    private bool active;    // Zustand, ob das Icon aktiv ist

    private void Start()
    {
        // initialieren und so
        playerObject = GameObject.FindGameObjectWithTag("Player");
    }

    private void OnMouseEnter()
    {
        if (DistanceCheck())    // ist der Ankerpunkt in Reichweite wird das Icon aktiviert
        {
            if (!player.isGrappled)
            {
                ActivateAnchor();
            }
        }

    }

    private void OnMouseOver()
    {
        if (active) // wird das icon bereits gezeigt oder nicht
        {
            if (!DistanceCheck() || player.isGrappled)   // ist der Ankerpunkt nicht in Reichweite wird das Icon deaktiviert
            {
                DisableAnchor();
            }
        }
        else
        {
            if (DistanceCheck())    // ist der Ankerpunkt in Reichweite wird das Icon aktiviert
            {
                if (!player.isGrappled)
                {
                    ActivateAnchor();
                }
            }
        }
    }

    private void OnMouseExit()
    {
        if (active) // ist das Icon beim verlassen der Aktivierungszone noch aktiv wird es deaktiviert
        {
            DisableAnchor();
        }
    }

    private void ActivateAnchor()   // aktiviert, bzw. erzeugt ein Icon im Canvas
    {
        active = true;
        player.grappleIndicator.SetActive(true); // Icon aktivieren
        player.grappleTarget = this.gameObject;
    }

    private void DisableAnchor()
    {
        active = false;
        player.grappleIndicator.SetActive(false); // Icon deaktivieren
        player.grappleTarget = null;
    }

    private bool DistanceCheck()    // prüft die Distanz zwischen Ankerpunkt und Spieler
    {
        float dist = (playerObject.transform.position - this.transform.position).magnitude;  // Distanz berechnen
        if (dist <= player.maxGrappleDistance)   // ist die Distanz kleiner als die Grappledistanz?
        {
            return true;
        }
        else return false;

    }
}

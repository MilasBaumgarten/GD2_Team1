using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnchorPoint : MonoBehaviour
{
    public PlayerScriptableObject player; //Das PlayerScriptableObject halt
    private GameObject playerObject; //Das GameObject des Spielers
    public GameObject indicator;    // Prefab für das Icon
    private GameObject indicatorInstance;   // gespawnte instanz des Icons
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
            ActivateAnchor();
        }
    }

    private void OnMouseOver()
    {
        if (active) // wird das icon bereits gezeigt oder nicht
        {
            if (!DistanceCheck())   // ist der Ankerpunkt nicht in Reichweite wird das Icon deaktiviert
            {
                DisableAnchor();
            }
        }
        else
        {
            if (DistanceCheck())    // ist der Ankerpunkt in Reichweite wird das Icon aktiviert
            {
                ActivateAnchor();
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
        player.grappleTarget = this.gameObject;  // PlayerGrapple mitteilen, dass dieser Ankerpunkt anvisiert wird
        indicatorInstance = Instantiate(indicator); // Icon spawnen lassen
    }

    private void DisableAnchor()
    {
        active = false;
        Destroy(indicatorInstance); // Icon entfernen
    }

    private bool DistanceCheck()    // prüft die Distanz zwischen Ankerpunkt und Spieler
    {
        float dist = (playerObject.transform.position - this.transform.position).magnitude;  // Distanz berechnen
        if (dist <= player.grappleDistance)   // ist die Distanz kleiner als die Grappledistanz?
        {
            return true;
        }
        else return false;

    }
}

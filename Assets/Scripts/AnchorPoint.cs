using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnchorPoint : MonoBehaviour
{

    public GameObject indicator;    // Prefab für das Icon
    private PlayerGrapple grapple;  // Skript auf dem Spieler
    private GameObject indicatorInstance;   // gespawnte instanz des Icons
    private bool active;    // Zustand, ob das Icon aktiv ist

    private void Start()
    {
        // initialieren und so
        grapple = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerGrapple>();
    }

    private void OnMouseEnter()
    {
        if (DistanceCheck())    // ist des Ankerpunkt in Reichweite wird das Icon aktiviert
        {
            ActivateAnchor();
        }
    }

    private void OnMouseOver()
    {
        if (active) // wird das icon bereits gezeigt oder nicht
        {
            if (!DistanceCheck())   // ist des Ankerpunkt nicht in Reichweite wird das Icon deaktiviert
            {
                DisableAnchor();
            }
        }
        else
        {
            if (DistanceCheck())    // ist des Ankerpunkt in Reichweite wird das Icon aktiviert
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
        grapple.setGrappleTarget(this.gameObject);  // PlayerGrapple mitteilen, dass dieser Ankerpunkt anvisiert wird
        indicatorInstance = Instantiate(indicator); // Icon spawnen lassen
        indicatorInstance.GetComponent<GrappleIndicator>().setTarget(this.gameObject);  // dem Icon sagen zu welchem Ankerpunkt es gehört
    }

    private void DisableAnchor()
    {
        active = false;

        if (grapple.getGrappleTarget().Equals(this.gameObject)) // hoffe dadurch kollision zu vermeiden lul
        {
            grapple.setGrappleTarget(null); // PlayerGrapple target wieder leeren
        }

        Destroy(indicatorInstance); // Icon entfernen
    }

    private bool DistanceCheck()    // prüft die Distanz zwischen Ankerpunkt und Spieler
    {
        float dist = (grapple.transform.position - this.transform.position).magnitude;  // Distanz berechnen
        if (dist <= grapple.player.grappleLength)   // ist die Distanz kleiner als die Grappledistanz?
        {
            return true;
        }
        else return false;

    }
}

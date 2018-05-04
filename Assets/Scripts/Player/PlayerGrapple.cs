using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerGrapple : MonoBehaviour
{

    public PlayerScriptableObject player;   // ScriptableObject vom Spieler (duh)
    private GameObject grappleTarget;   // der anvisierte Ankerpunkt

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && grappleTarget != null)   // bei vorhandenem Ziel und Drücken der Taste zum Grapplen wird eingehakt
        {
            //do something!
            Debug.Log("grappling " + grappleTarget.name);
        }
    }

    public void setGrappleTarget(GameObject target)
    {
        grappleTarget = target;
    }

    public GameObject getGrappleTarget()
    {
        return grappleTarget;
    }
}

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
            if (grappleTarget.tag == "Door"){
				grappleTarget.GetComponent<DebugDoor>().Activate(0);
				GameObject.FindGameObjectsWithTag("AudioManager")[0].GetComponent<DebugAudioManager>().SwitchSoundtracks();
			}
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

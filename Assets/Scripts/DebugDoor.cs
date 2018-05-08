using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DebugDoor : MonoBehaviour
{
    private PlayerGrapple grapple;  // Skript auf dem Spieler
    private bool active;    // Zustand, ob das Icon aktiv ist

	public Vector3 finalPosition; // wohin die Tür aufgehen soll
	private Vector3 startPosition;

    private void Start()
    {
        // initialieren und so
        grapple = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerGrapple>();
		startPosition = transform.position;
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
    }

    private void DisableAnchor()
    {
        active = false;

        if (grapple.getGrappleTarget().Equals(this.gameObject)) // hoffe dadurch kollision zu vermeiden lul
        {
            grapple.setGrappleTarget(null); // PlayerGrapple target wieder leeren
        }
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

	public void Activate(float startTime){
		Debug.Log("Door");
		StartCoroutine(move());
	}

	IEnumerator move(){
		float lerpScale = 0.0f;
		while (lerpScale <= 1){
			transform.position = Vector3.Lerp(startPosition, startPosition + finalPosition, lerpScale);
			lerpScale += Time.deltaTime;
			yield return new WaitForSeconds(0);
		}

	}

	void OnDrawGizmos()
	{
		Gizmos.color = Color.green;
		Gizmos.DrawSphere(transform.position + finalPosition, 0.1f);
	}
}

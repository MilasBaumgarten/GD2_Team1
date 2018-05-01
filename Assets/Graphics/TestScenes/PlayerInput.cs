using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour{
	private Transform playerCamera;
	private GameObject player;
	[SerializeField]
	private float playerHeight;

	[SerializeField]
	private ExplosionScriptableObject explosion;

	void Start(){
		playerCamera = Camera.main.transform;
		player = GameObject.FindGameObjectWithTag("Player");
	}
	
	void Update(){
		// !!! Wenn man gegen eine Wand schießt (davor stehen, ca 90 zu Spieler), schießt es den Spieler nach oben !!!
		//			- kommt mglw durch Bewegung
		// gehackter Rocketjump
		if (Input.GetKeyDown(KeyCode.Mouse0)){
			// teste ob Spieler etwas trifft
			RaycastHit hit;
			if (Physics.Raycast(playerCamera.position, playerCamera.forward, out hit)){
				// berechne Richtung von Aufprall zu Character
				Vector3 direction = ((playerCamera.position - Vector3.down * playerHeight) - hit.point);
				// Explosionskraft (Vektor) = Richtung * Abfall der Explosionswirkung * Explosionsstärke
				Vector3 force = direction.normalized * explosion.getCurveValue(direction.magnitude / explosion.radius, explosion.distanceFallOff) * explosion.force;
				// lasse Explosion auf Spieler wirken
				player.GetComponent<MovePlayer>().addForce(force);
			}
		}
	}
}

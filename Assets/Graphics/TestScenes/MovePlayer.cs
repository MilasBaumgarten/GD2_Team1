using UnityEngine;
using System.Collections;

// Source: Unity Default Player Movement

/* TODO
	- Bewegung in Luft
 */

public class MovePlayer : MonoBehaviour {
	#region Components
	private CharacterController controller;
	#endregion

	#region Movement
	public float speed = 6.0F;
	private float airSpeedModifier = 0.5f;
	public float jumpSpeed = 8.0F; 
	public float gravity = 20.0F;
	private Vector3 moveDirection = Vector3.zero;
	#endregion
	
	#region Explosion
	[SerializeField]
	private ExplosionScriptableObject explosion;
	private float explosionTimer = 0.0f;
	private Vector3 forceDirection = Vector3.zero;
	#endregion

	private void Start() {
		controller = GetComponent<CharacterController>();
	}

	private void Update() {
		// lese Bewegungsrichtungseingabe aus (WASD)
		Vector3 input = (new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")));
		// rechne Eingabe von Weltkoordinaten zu lokalen Koordinaten um
		input = transform.TransformDirection(input);

		// berechne Bewegung abhaengig von Spieler ist auf Boden/ in Luft
		moveDirection.x = input.x * ((controller.isGrounded) ? speed : speed * airSpeedModifier);
		moveDirection.y = (controller.isGrounded) ? 0 : moveDirection.y - (gravity * Time.deltaTime);
		moveDirection.z = input.z * ((controller.isGrounded) ? speed : speed * airSpeedModifier);
		
		
		// Abfrage Sprung
		if (Input.GetButton("Jump") && controller.isGrounded) {
			moveDirection.y = jumpSpeed;
		}
		
		// Explosion auf Character einwirken lassen
		if (explosionTimer <= explosion.duration){
			moveDirection += forceDirection * explosion.getCurveValue(explosionTimer, explosion.timeFallOff);
			explosionTimer += Time.deltaTime;
		}
		//Making the character move
		controller.Move(moveDirection * Time.deltaTime);
	}

	// Charakter bekommt Explosion ab
	public void addForce(Vector3 force){
		forceDirection = force;
		explosionTimer = 0;
	}
}
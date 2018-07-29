using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IntroMovementScript : MonoBehaviour {

	private Rigidbody2D myRigidbody;

	[SerializeField]
	private float speed;


	// Use this for initialization
	void Start () {
		myRigidbody = GetComponent<Rigidbody2D> ();
	}


	void FixedUpdate () {
		float horizontal = Input.GetAxis ("Horizontal");

		HandleMovement ();		
	}

	private void HandleMovement(){
		myRigidbody.velocity = Vector2.left * speed;
	}
}

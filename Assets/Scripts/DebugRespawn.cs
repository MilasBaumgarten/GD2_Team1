using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DebugRespawn : MonoBehaviour {

	GameObject player;

	private void Start() {
		player = GameObject.Find("Player");
	}

	void Update () {
		if (Input.GetKeyDown(KeyCode.R)){
			player.transform.position = transform.position;
		}
	}
}

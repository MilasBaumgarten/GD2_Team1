using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(BoxCollider))]
public class CristalTrigger : MonoBehaviour {

    public GameObject light;
    public bool isActive = false;
    public void OnTriggerEnter(Collider other)
    {
		if (other.tag == "Player") {
			if (!isActive) {
				light.SetActive(true);
				Debug.Log("Licht");
			}
		}
    }


}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class CheckpointNew : MonoBehaviour {


    private void Awake()
    {
        gameObject.layer = LayerMask.NameToLayer("Checkpoint");
        print(Application.persistentDataPath);
    }

    private void OnTriggerEnter(Collider other)
    {
        PlayerCheckpoint controller = other.GetComponent<PlayerCheckpoint>();

        if (controller == null)
            return;

        controller.SetCheckpoint(this);
        Debug.Log(this.gameObject.name);
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.blue * 0.75f;
        Gizmos.DrawSphere(transform.position, 0.1f);
        Gizmos.DrawRay(transform.position, transform.forward * 2);
    }


}


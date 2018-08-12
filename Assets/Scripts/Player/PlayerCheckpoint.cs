using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCheckpoint : MonoBehaviour {

    protected CheckpointNew currentCheckpoint;

	public void SetCheckpoint(CheckpointNew checkpoint)
    {
        if (checkpoint != null)
            currentCheckpoint = checkpoint;
    }
	
    public void Spawn()
    {
        if (currentCheckpoint != null)
        {
            transform.position = currentCheckpoint.transform.position;
            transform.rotation = currentCheckpoint.transform.rotation;
        }
        else
        {
            Debug.LogError("Kein Checkpoint gesetzt.");
        }
            
    }
	
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class GameData{

    //public Transform lastCheckpoint;
    public float xPos;
    public float yPos;
    public float zPos;

    public float xRot;
    public float yRot;
    public float zRot;
    public float wRot;

    public GameData(CheckpointNew lastCheckpointChN)
    {
        xPos = lastCheckpointChN.transform.position.x;
        yPos = lastCheckpointChN.transform.position.y;
        zPos = lastCheckpointChN.transform.position.z;

        xRot = lastCheckpointChN.transform.rotation.x;
        yRot = lastCheckpointChN.transform.rotation.y;
        zRot = lastCheckpointChN.transform.rotation.z;
        wRot = lastCheckpointChN.transform.rotation.w;
    //lastCheckpoint = lastCheckpointChN;
}
}

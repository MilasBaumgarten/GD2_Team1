using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class GameData{

    public CheckpointNew lastCheckpoint;

    public GameData(CheckpointNew lastCheckpointChN)
    {
        lastCheckpoint = lastCheckpointChN;
    }
}

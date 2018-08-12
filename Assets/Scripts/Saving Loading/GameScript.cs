using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class GameScript{
    public static GameScript current;
    public int currentCheckpoint;

    public GameScript()
    {
        currentCheckpoint = -1;
    }
}

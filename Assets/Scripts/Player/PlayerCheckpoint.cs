using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[System.Serializable]
public class PlayerCheckpoint : MonoBehaviour {

    protected CheckpointNew currentCheckpoint;

	public void SetCheckpoint(CheckpointNew checkpoint)
    {
        if (checkpoint != null)
        {
            currentCheckpoint = checkpoint;
            SaveFile();
        }
    }


    public void SaveFile()
    {
        string destination = Application.persistentDataPath + "/save.dat";
        FileStream file;

        if (File.Exists(destination)) file = File.OpenWrite(destination);
        else file = File.Create(destination);

        GameData data = new GameData(currentCheckpoint);
        BinaryFormatter bf = new BinaryFormatter();
        bf.Serialize(file, data);
        file.Close();
        Debug.Log("File Saved");
    }


    public void LoadFile()
    {
        string destination = Application.persistentDataPath + "/save.dat";
        FileStream file;

        if (File.Exists(destination)) file = File.OpenRead(destination);
        else
        {
            Debug.Log("Kein Spielstand");
            return;
        }

        BinaryFormatter bf = new BinaryFormatter();
        GameData data = (GameData)bf.Deserialize(file);
        file.Close();

        Vector3 tempV3 = new Vector3(data.xPos, data.yPos, data.zPos);
        Quaternion tempQ = new Quaternion(data.xRot, data.yRot, data.zRot, data.wRot);
        //currentCheckpoint.transform.SetPositionAndRotation(tempV3, tempQ);
        transform.position = tempV3;
        transform.rotation = tempQ;
        //Spawn();
        Debug.Log("Laden erfolgreich");
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

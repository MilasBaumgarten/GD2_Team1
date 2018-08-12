using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

public class SaveLoad : MonoBehaviour {

    public static GameScript savedGame;
    private static string path = Application.dataPath + "savegame.json";

	public static void OverwriteSave()
    {
        savedGame = GameScript.current;
        string json = JsonUtility.ToJson(savedGame);
        File.WriteAllText(path, json);
    }

    public static void NewSave()
    {
        savedGame = new GameScript();
        string json = JsonUtility.ToJson(savedGame);
        File.WriteAllText(path, json);
        print(path);
    }

    public static void Load()
    {
        if(File.Exists(Path.Combine(Application.persistentDataPath, "savegame.json")))
        {
            string json = File.ReadAllText(path);
            savedGame = JsonUtility.FromJson<GameScript>(json);
        }
    }
}


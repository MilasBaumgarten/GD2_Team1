using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class MainMenu : MonoBehaviour {

    public void StartGame()
    {
        SceneManager.LoadSceneAsync("Wueste_Main");
    }

    public void ResumeGame()
    {
        StartCoroutine(LoadScene());
    }

    IEnumerator LoadScene()
    {
        DontDestroyOnLoad(this.gameObject);
        AsyncOperation load = SceneManager.LoadSceneAsync("Wueste_Main");
		SceneManager.LoadSceneAsync("Deko Wueste");
		while (!load.isDone)
        {
            yield return null;
        }
        GameObject player = GameObject.Find("Player");
        PlayerCheckpoint loadcheck = (PlayerCheckpoint)player.GetComponent(typeof(PlayerCheckpoint));
        loadcheck.LoadFile();
    }

    public void Quit()
    {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
    }
}

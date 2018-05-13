using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Pause Menü Skript/verwaltung
public class PauseGame : MonoBehaviour {
    public Transform canvas;
    public Transform pauseMenu;
    public Transform settingsMenu;

	void Update () {
	if(Input.GetKeyDown(KeyCode.Escape))
        {
            Pause();
        }
	}


    public void Pause()
    {
        if (canvas.gameObject.activeInHierarchy == false)
        {
            //Stellt sicher, dass auch nur das Pause Menue am Anfang offen ist
            if(pauseMenu.gameObject.activeInHierarchy == false)
            {
                pauseMenu.gameObject.SetActive(true);
                settingsMenu.gameObject.SetActive(false);
            }
            //Menü einblenden
            canvas.gameObject.SetActive(true);

            //Pause
            Time.timeScale = 0;

            //Musik im Pause Menü aus, muss noch ueberarbeitet werden -> AudioChannels
            //AudioListener.volume = 0;

            //Maus Frei geben und Anzeigen
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else
        {
            //Menü ausblenden
            canvas.gameObject.SetActive(false);

            //Unpause
            Time.timeScale = 1;

            //Musik außerhalb des Pause Menüs an, muss noch ueberarbeitet werden -> AudioChannels
            //AudioListener.volume = 1;

            //Maus wird wieder gelocked und unsichtbar gemacht
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }

    }

    //Wechsel zwischen settingsmenu und pausemenu
    public void Settings(bool Open)
    {
        if(Open)
        {
            settingsMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
        }
        if(!Open)
        {
            settingsMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
    }


    public void QuitGame()
    {
        Application.Quit();
    }

}

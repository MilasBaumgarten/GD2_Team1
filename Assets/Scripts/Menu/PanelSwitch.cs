using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PanelSwitch : MonoBehaviour {

    public Transform s_Audio;
    public Transform s_Controlls;
    public Transform s_Debug;

    public void SetControllsActiv()
    {
        s_Audio.gameObject.SetActive(false);
        s_Debug.gameObject.SetActive(false);
        s_Controlls.gameObject.SetActive(true);
    }

    public void SetAudioActiv()
    {
        s_Debug.gameObject.SetActive(false);
        s_Controlls.gameObject.SetActive(false);
        s_Audio.gameObject.SetActive(true);
    }
    public void SetDebugActiv()
    {
        s_Audio.gameObject.SetActive(false);
        s_Controlls.gameObject.SetActive(false);
        s_Debug.gameObject.SetActive(true);
    }
}

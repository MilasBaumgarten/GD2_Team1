using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class AudioScript : MonoBehaviour {

    public AudioMixer mixer;

    public void SetMasterSound(float soundLevel)
    {
        mixer.SetFloat("masterVol", Mathf.Log(soundLevel) * 20);
    }
    public void SetMusicSound(float soundLevel)
    {
        mixer.SetFloat("musicVol", Mathf.Log(soundLevel) * 20);
    }
    public void SetSFXSound(float soundLevel)
    {
        mixer.SetFloat("sfxVol", Mathf.Log(soundLevel) * 20);
    }
    public void SetOtherSound(float soundLevel)
    {
        mixer.SetFloat("otherVol", Mathf.Log(soundLevel) * 20);
    }


}

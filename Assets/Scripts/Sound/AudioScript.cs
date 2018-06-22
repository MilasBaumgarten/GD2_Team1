using UnityEngine;
using UnityEngine.Audio;

public class AudioScript : MonoBehaviour {

    public AudioMixer mixer;

    public void SetMasterSound(float soundLevel)
    {
        if(soundLevel != 0)
        {
            mixer.SetFloat("masterVol", Mathf.Log(soundLevel,10) * 20);
        }
        else
        {
            mixer.SetFloat("masterVol", -80);
        }
    }
    public void SetMusicSound(float soundLevel)
    {
        mixer.SetFloat("musicVol", Mathf.Log(soundLevel,10) * 20);
    }
    public void SetSFXSound(float soundLevel)
    {
        mixer.SetFloat("sfxVol", Mathf.Log(soundLevel,10) * 20);
    }
    public void SetOtherSound(float soundLevel)
    {
        mixer.SetFloat("otherVol", Mathf.Log(soundLevel,10) * 20);
    }


}

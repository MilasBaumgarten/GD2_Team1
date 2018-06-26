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
        if (soundLevel != 0)
        {
            mixer.SetFloat("musicVol", Mathf.Log(soundLevel, 10) * 20);
        }
        else
        {
            mixer.SetFloat("musicVol", -80);
        }
    }
    public void SetSFXSound(float soundLevel)
    {
         if (soundLevel != 0)
         {
            mixer.SetFloat("sfxVol", Mathf.Log(soundLevel, 10) * 20);
         }
         else
         {
            mixer.SetFloat("sfxVol", -80);
         }
    }
    public void SetOtherSound(float soundLevel)
    {
         if (soundLevel != 0)
         {
            mixer.SetFloat("otherVol", Mathf.Log(soundLevel, 10) * 20);
         }
         else
         {
            mixer.SetFloat("otherVol", -80);
         }
    }


}

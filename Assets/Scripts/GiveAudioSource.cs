using UnityEngine;

//Vorausgesetzte AudioSource
[RequireComponent(typeof(AudioSource))]
public class GiveAudioSource : MonoBehaviour {
    private AudioSource source;

    void Awake()
    {
        source = GetComponent<AudioSource>();
        //Abspielen beim starten deaktiviert
        source.playOnAwake = false;
    }


    //Abspielen des SoundEffekts
    public void Play()
    {
        source.Play();
    }
	
}

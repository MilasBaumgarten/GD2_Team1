using System.Collections.Generic;
using UnityEngine;

public class SoundTrack : MonoBehaviour {

    public float soundTrackVolume = 1;
    public float startVolume = 1;

    [Tooltip("Zeit die zum wechseln zwischen den Soundtracks benötigt wird")]
    public float fadeZeit = 2;
    public bool playOnStart = true;
    public AudioSource[] audioSources;

    AudioSource activeAudio, fadeAudio;
    float volumeVelocity, fadeVelocity;
    float volume;

    Stack<string> trackStack = new Stack<string>();

    //Track wird am Anfang des Stacks eingefügt
    public void TrackHinzufuegen(string name)
    {
		if (trackStack.Count > 0) {
			trackStack.Pop();
		}

        trackStack.Push(name);
        Einreihen(name);
    }

    //Track wird aus dem Stack entfernt, wenn dieser über mehr als einen Track verfügt
    public void TrackEntfernen()
    {
        trackStack.Pop();
    }

    //Spielt den genannten Track aus dem stack ab
    public void Einreihen(string name)
    {
        foreach (var i in audioSources)
        {
            if(i.name == name)
            {
                fadeAudio = activeAudio;
                activeAudio = i;
                if (!activeAudio.isPlaying) activeAudio.Play();
                break; 
            }
        }
    }

    public void Play()
    {
        if (activeAudio != null)
            activeAudio.Play();
    }

    public void Stop()
    {
        foreach (var i in audioSources) i.Stop();
    }

    void OnEnable()
    {
        trackStack.Clear();
        if (audioSources.Length > 0)
        {
            activeAudio = audioSources[0];
            foreach (var i in audioSources) i.volume = 0;
            trackStack.Push(audioSources[0].name);
            if (playOnStart) Play();
        }
        volume = startVolume;
    }

    void Reset()
    {
        audioSources = GetComponentsInChildren<AudioSource>();
    }

    public void SetVolume(float volume)
    {
        this.volume = volume;
    }

    void Update()
    {
		Debug.Log(trackStack.Count);
		if (trackStack.Count == 0) {
			trackStack.Push(audioSources[0].name);
			Einreihen(audioSources[0].name);
		}

		if (activeAudio != null) {
			activeAudio.volume = Mathf.SmoothDamp(activeAudio.volume, volume * soundTrackVolume, ref volumeVelocity, fadeZeit, 1);
		}

        if (fadeAudio != null)
        {
            fadeAudio.volume = Mathf.SmoothDamp(fadeAudio.volume, 0, ref fadeVelocity, fadeZeit, 1);
            if (Mathf.Approximately(fadeAudio.volume, 0))
            {
                fadeAudio.Stop();
                fadeAudio = null;
            }
        }
    }
}

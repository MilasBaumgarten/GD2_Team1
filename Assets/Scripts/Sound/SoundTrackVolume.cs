using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundTrackVolume : MonoBehaviour {

    SoundTrack soundTrack;

    void OnEnable()
    {
        soundTrack = GetComponentInParent<SoundTrack>();
    }

    void OnTriggerEnter(Collider other)
    {
        soundTrack.TrackHinzufuegen(this.name);
    }

    void OnTriggerExit(Collider other)
    {
        soundTrack.TrackEntfernen();
    }
}

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
		if (other.tag == "Player") {
			soundTrack.TrackHinzufuegen(this.name);
		}
    }

    void OnTriggerExit(Collider other)
    {
		if (other.tag == "Player") {
			soundTrack.TrackEntfernen();
		}
    }
}

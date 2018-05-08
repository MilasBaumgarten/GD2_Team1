using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DebugAudioManager : MonoBehaviour {

	public AudioSource earth;
	public AudioSource desert;

	public void SwitchSoundtracks(){
		StartCoroutine(FadeOut(desert));
		StartCoroutine(FadeIn(earth));
	}

	IEnumerator FadeOut(AudioSource source){
		while (source.volume > 0){
			source.volume -= Time.deltaTime;
			yield return new WaitForSeconds(0);
		}
	}

	IEnumerator FadeIn(AudioSource source){
		source.Stop();
		source.volume = 0;
		source.Play();
		while (source.volume < 1){
			source.volume += Time.deltaTime;
			yield return null;
		}
	}
}

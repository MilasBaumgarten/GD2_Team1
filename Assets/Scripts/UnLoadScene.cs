using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Serialization;

public class UnLoadScene : MonoBehaviour {
	[Tooltip("Szenen, die beim Betreten des Triggers geladen bzw entfernt werden sollen")]
	[SerializeField]
	private string[] scenes;

	[Tooltip("Trigger, die gleiche Szenen laden oder entfernen (Ladetrigger und Entferntrigger müssen hier zusammen aufgeführt werden)")]
	[SerializeField]
	private GameObject[] trigger;

	public bool isUnloader;

	[HideInInspector]
	public bool loaded = false;

	private void OnTriggerEnter(Collider collider) {
		// wenn Spieler den Trigger betritt
		if (collider.tag == "Player") {
			foreach (string scene in scenes) {
				if (!loaded && !isUnloader) {
					// lade alle angegebenen Szenen, falls nicht schon geschehen
					SceneManager.LoadScene(scene, LoadSceneMode.Additive);
				} else if (loaded && isUnloader) {
					// entferne alle angegebenen Szenen, falls diese bereits geladen sind
					SceneManager.UnloadSceneAsync(scene);
				}
			}

			if (scenes.Length > 0) {
				// vermerke für jeden beteiligten Trigger, dass Szenen geladen bzw entfernt wurden
				loaded = (isUnloader) ? false : true;

				foreach(GameObject g in trigger) {
					g.GetComponent<UnLoadScene>().loaded = (isUnloader) ? false : true;
				}
			}
		}
	}
}

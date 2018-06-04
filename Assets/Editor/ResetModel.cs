using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class ResetModel : EditorWindow {

	/*@MenuItem ("Tools/Revert to Prefab %r")
	static function Revert() {
		var selection = Selection.gameObjects;

		if (selection.length > 0) {
			for (var i : int = 0; i < selection.length; i++) {
				EditorUtility.ResetGameObjectToPrefabState(selection[i]);
			}
		} else {
			Debug.Log("Cannot revert to prefab - nothing selected");
		}
	}*/

	[MenuItem("Window/ResetModelsInScene")]
	static void Init(){
		ResetModel window = (ResetModel) EditorWindow.GetWindow(typeof(ResetModel));
		window.Show();
	}

	private void OnGUI(){
		if (GUILayout.Button("reset")){
			GameObject[] objectArray = UnityEngine.SceneManagement.SceneManager.GetActiveScene().GetRootGameObjects();	// alle Objekte in Szene in Array speichern
			List<GameObject> objects = new List<GameObject>();

			// alle Objekte und Kinder in Liste einfügen
			for (int i = 0; i < objectArray.Length; i++){
				// Objekte, die nicht resettet werden sollen abfangen
				if (!objectArray[i].name.Contains("Player")){
					addChild(objectArray[i], objects);
				}
			}

			foreach(GameObject o in objects){
				Vector3 pos = o.transform.position;
				o.transform.position = new Vector3(Mathf.Floor(pos.x), Mathf.Floor(pos.y), Mathf.Floor(pos.z));
			}

			List<GameObject> models = new List<GameObject>();

			// nur Objekte mit Name "Modell" aus Liste suchen
			foreach(GameObject o in objects){
				if (o.name.Equals("Modell")){
					models.Add(o);
				}
			}
			
			// reset Transform
			foreach(GameObject o in models){
				PrefabUtility.ResetToPrefabState(o.transform);
				//o.transform.position = o.transform.parent.transform.position;
			}
		}
	}

	// finde rekursiv alle Kinderobjekte
	private void addChild(GameObject o, List<GameObject> objects){
		for (int i = 0; i < o.transform.childCount; i++){
			addChild(o.transform.GetChild(i).gameObject, objects);
		}
		objects.Add(o);
	}
}

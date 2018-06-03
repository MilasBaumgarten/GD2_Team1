using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class ResetModel : EditorWindow {

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
				addChild(objectArray[i], objects);
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
				o.transform.position = o.transform.parent.transform.position;
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

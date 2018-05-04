using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrappleIndicator : MonoBehaviour
{

    private GameObject target;  // der Ankerpunkt/Haken
    private Camera cam; // Kamera des Spielers

    void Start()
    {
        //target und cam initialisieren
        transform.SetParent(GameObject.FindGameObjectWithTag("Canvas").transform, false);
        cam = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
    }

    void Update()
    {
        transform.position = cam.WorldToScreenPoint(target.transform.position); // das Icon auf dem Canvas entsprechend der position des Ankerpunkts/Hakens verschieben
    }

    public void setTarget(GameObject target)
    {
        this.target = target;
    }
}

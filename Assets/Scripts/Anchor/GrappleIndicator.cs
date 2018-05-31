using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrappleIndicator : MonoBehaviour
{
    public PlayerScriptableObject player;
    private Camera cam; // Kamera des Spielers

    void Start()
    {
        //target und cam initialisieren
        transform.SetParent(GameObject.FindGameObjectWithTag("Canvas").transform, false);
        cam = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
    }

    void Update()
    {
        transform.position = cam.WorldToScreenPoint(player.grappleTarget.transform.position); // das Icon auf dem Canvas entsprechend der position des Ankerpunkts/Hakens verschieben
    }

}

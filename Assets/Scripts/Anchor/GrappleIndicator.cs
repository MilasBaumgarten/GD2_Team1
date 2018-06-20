using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrappleIndicator : MonoBehaviour
{
    public PlayerScriptableObject player;   // Das PlayerScriptableObject das Spielers
    private Camera cam; // Kamera des Spielers

    void Start()
    {
        cam = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();    //die First-Person Kamera
        this.gameObject.SetActive(false);   //standartmäßig aus
        player.grappleIndicator = this.gameObject;  //ins ScriptableObject eintragen
    }

    void Update()
    {
        transform.position = cam.WorldToScreenPoint(player.grappleTarget.transform.position); // das Icon auf dem Canvas entsprechend der position des Ankerpunkts/Hakens verschieben
    }
}

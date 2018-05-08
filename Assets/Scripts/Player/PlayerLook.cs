using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerLook : MonoBehaviour
{
    [Header("Skript muss auf Spielerobjekt sitzen!")]
    [Tooltip("Kamera des Spielers (Muss Kind-Objekt sein)")]
    public Transform cam;  //Kamera (First Person) des Spielers

    [Tooltip("ScriptableObject des Spielers (Asset)")]
    public PlayerScriptableObject player;   //Referenz zum ScriptableObject
    private Vector2 mouseLook;  //Blickrichtung des Spielers als 2D-Vektor

    void Start()    //nur zum zentrieren, festhalten und ausblenden des Cursors --> später in GameManager verschieben
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

	void FixedUpdate()
    {
        var mouseDelta = new Vector2(Input.GetAxisRaw("Mouse X") * player.h_sens, Input.GetAxisRaw("Mouse Y") * player.v_sens); //Bewegung der Maus in 2D-Vektor festhalten

        mouseLook += mouseDelta;    //Blickrichtungs-Vektor mit Änderung durch Bewegung der Maus addieren
        mouseLook.y = Mathf.Clamp(mouseLook.y, -90f, 90f);  //Vertikale Rotation zwischen -90 und +90 Grad eingrenzen (verhindert Genickbruch)

        this.transform.localRotation = Quaternion.AngleAxis(mouseLook.x, this.transform.up);    //Spielermodell bei seitlicher Mausbewegung um eigene Y-Achse drehen (nach links und rechts gucken)
        cam.transform.localRotation = Quaternion.AngleAxis(-mouseLook.y, Vector3.right);    //Kamera bei vertikaler Mausbewegung um ihre X-Achse drehen (nach oben und unten gucken)

        /*if (Input.GetKeyDown(KeyCode.Escape))   //gibt den Cursor bei drücken von "Escape" wieder frei --> gehört auch in GameManager
                                                //muss nach Menü schließen rückgängig gemacht werden
                                               
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true; 
        }*/
    }
}

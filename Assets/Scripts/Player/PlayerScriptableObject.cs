using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class PlayerScriptableObject : ScriptableObject
{
    [Header("Hier befinden sich alle einstellbaren Variablen für den Spieler")]
    [Range(0.1f, 5f)]
    [Tooltip("horizontale Maus-Sensibilität (0.1 bis 5)")]
    public float h_sens = 1.0f;

    [Range(0.1f, 5f)]
    [Tooltip("vertikale Maus-Sensibilität (0.1 bis 5)")]
    public float v_sens = 1.0f;

    [Tooltip("Geschwindigkeit mit der sich der Spieler maximal bewegen soll")]
    public float maxMoveSpeed;

    [Tooltip("Momentane Geschwindigkeit des Spielers")]
    public float speed;

    [Tooltip("Kraft mit der Der Spieler Springt (beeinflusst Sprunghöhe)")]
    public float jumpForce;

    [Tooltip("Zustand ob Spieler auf dem Boden steht")]
    public bool isGrounded = false;

    [Tooltip("horizontale Geschwindigkeit mit der sich der Spieler im NoClip bewegen soll")]
    public float horizontalNoClipSpeed;

    [Tooltip("vertikale Geschwindigkeit mit der sich der Spieler im NoClip bewegen soll")]
    public float verticalNoClipSpeed;

    [Tooltip("Geschwindigkeitsmultiplikator fürs schnellere Bewegen im NoClip (Shift links)")]
    public float noClipSprintMultiplier;

}

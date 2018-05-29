﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class PlayerScriptableObject : ScriptableObject
{
    /*  --INSTRUCTIONS--    (Bitte lesen)
     *  
     *  -Gleichartige Variablen in #Regions gruppieren
     *  -Vor jeder neuen Region immer ein [Space]
     *  -Um jedes [Space] eine Leerzeile
     *  -nach Jeder euen Region einen [Header("Region-Name")] in dem Format
     *  -Vor jede Variable ein [Tooltip("mit Beschreibung an dieser Stelle")] wofür die variable gedacht ist
     *  -für feintuning eventuell einen [Range(min, max)] Slider vor float-Variablen
     *  
     *  Wenn sich daran gehalten wird sieht nicht nur der Code schön aus, sonder auch im Inspector wird es übersichtlich!
     *  
     */

    [Header("Hier befinden sich alle einstellbaren Variablen für den Spieler")] //der Header kann so bleiben

    [Space]
    #region TastenBelegung
    [Header("TastenBelegung")]

    [Tooltip("Taste zum Springen")]
    public KeyCode jumpButton;

    [Space]

    #region Maus-Einstellungen
    [Header("\tMaus-Einstellungen")]

    [Range(0.1f, 5f)]
    [Tooltip("horizontale Maus-Sensibilität (0.1 bis 5)")]
    public float h_sens = 1.0f;

    [Range(0.1f, 5f)]
    [Tooltip("vertikale Maus-Sensibilität (0.1 bis 5)")]
    public float v_sens = 1.0f;
    #endregion

    [Space]

    #region Tastenbelegung im NoClip
    [Header("\tTastenbelegung im NoClip")]
    [Tooltip("Taste zum Ein-/Ausschalten von NoClip")]
    public KeyCode toggleNoClip;

    [Tooltip("Taste zum schneller Bewegen im NoClip")]
    public KeyCode noClipSprint;

    [Tooltip("Taste zum nach oben Bewegen im NoClip")]
    public KeyCode noClipAscend;

    [Tooltip("Taste zum nach unten Bewegen im NoClip")]
    public KeyCode noClipDecend;
    #endregion
    #endregion

    [Space]

    #region Regeln
    [Header("Regeln")]

    [Tooltip("Soll der Spieler in der Lage sein NoClip Ein-/Auszuschalten?")]
    public bool allowNoClip;
    #endregion

    [Space]

    #region SpielerBewegung
    [Header("SpielerBewegung")]

    [Tooltip("Geschwindigkeit mit der sich der Spieler bewegen soll")]
    public float moveSpeed;

    [Tooltip("Momentane Geschwindigkeit des Spielers")]
    public float speed;

    [Tooltip("Beeinflusst die Fallbeschleunigung des Spielers (wenn velocity.y < 0)")]
    public float fallMultiplier;

    [Tooltip("Schwerkraftsmultiplikator (beeinflusst nur den Spieler")]
    public float gravityMultiplier;

    [Tooltip("Geschwindigkeit mit der Der Spieler nach oben Springt (beeinflusst Sprunghöhe)")]
    public float jumpSpeed;

    [Tooltip("Entschleunigungsgeschwindigkeit wenn der Spieler sich am boden befindet")]
    public float slowDownSpeed;

    [Tooltip("Geschwindigkeit mit der der Spieler seine Bewegungsrichtung in der Luft ändern kann")]
    public float airControlSpeed;

    //[Tooltip("Zustand ob Spieler auf dem Boden steht")]
    ////public bool isGrounded = false;

    [Space]

    #region NoClip Bewegung
    [Header("\tNoClip Bewegung")]

    [Tooltip("Ist NoClip Ein- oder Ausgeschalten?")]
    public bool noClip;

    [Tooltip("horizontale Geschwindigkeit mit der sich der Spieler im NoClip bewegen soll")]
    public float noClipSpeed;

    [Tooltip("Geschwindigkeitsmultiplikator fürs schnellere Bewegen im NoClip (Shift links)")]
    public float noClipSprintMultiplier;
    #endregion
    #endregion

    [Space]

    #region Sonstige
    [Header("Sonstige")]

    public float grappleLength;
    #endregion
}

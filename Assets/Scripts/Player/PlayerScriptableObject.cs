using System.Collections;
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

    [Tooltip("Taste mit der sich der Spieler nach Vorne bewegt")]
    public KeyCode forwardButton;

    [Tooltip("Taste mit der sich der Spieler nach Hinten bewegt")]
    public KeyCode backwardButton;

    [Tooltip("Taste mit der sich der Spieler nach Rechts bewegt")]
    public KeyCode rightButton;

    [Tooltip("Taste mit der sich der Spieler nach Links bewegt")]
    public KeyCode leftButton;

    [Tooltip("Taste zum Springen")]
    public KeyCode jumpButton;

    [Tooltip("Taste zum Greifen")]
    public KeyCode grappleButton;

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

    [Tooltip("Die maximale Distanz auf die der Spieler grapplen kan")]
    public float maxGrappleDistance;

    [Tooltip("Die momentane länge der Kette")]
    public float grappleDistance;

    [Tooltip("Die Geschwindigkeit mit der der Spieler die länge der Kette ändern kann")]
    public float reelInSpeed;

    [Tooltip("Die Geschwindigkeit mit der sich die Hand zum Ankerpunkt bewegt")]
    public float grappleSpeed;

    [Tooltip("Grapplet der Spieler gerade?")]
    public bool isGrappling;

    [Tooltip("Hängt der Spieler an einem Ankerpunkt?")]
    public bool isAttached;

    [Tooltip("Ist die Hand des Spielers ab?")]
    public bool handDetached;

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

    [Space]

    #region Objekte und Vektoren
    [Header("Objekte und Vektoren")]

    [Tooltip("Ankerpunkt der Anvisiert wird (do not edit)")]
    public GameObject grappleTarget;

    [Tooltip("Grapple-Icon im Canvas (do not edit)")]
    public GameObject grappleIndicator;

    [Tooltip("Position des gegriffenen Ankerpunkts (do not edit)")]
    public Vector3 anchorPosition;
    #endregion
    #endregion
}

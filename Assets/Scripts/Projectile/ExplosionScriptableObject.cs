using UnityEngine;

[CreateAssetMenu]
public class ExplosionScriptableObject : ScriptableObject
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

    [Header("Hier befinden sich alle einstellbaren Variablen für die Explosionen")] //der Header kann so bleiben

    [Space]

    #region
    [Header("Effekte")]
    [Tooltip("Das Prefab mit Partikeleffekt der Explosion")]
    public GameObject explosionEffect;
    #endregion

    [Space]

    #region Einstellungen
    [Header("Einstellungen")]
    [Tooltip("Die Stärke mit der die Explosion Objekte bewegt")]
    public float explosionForce;

    [Tooltip("Der Effekt-Radius der Explosion")]
    public float radius;

    [Tooltip("Wie schnell die Stärke der Explosion mit Distanz zum Mittelpunkt abnehmen soll (größer bedeutet schnellel; exponentiell)")]
    public float dropOff;

    [Tooltip("Zeit in Sekunden bis die Explosions-Instanz gelöscht wird")]
    public float effektLifeTime = 2.0f;
    #endregion
}

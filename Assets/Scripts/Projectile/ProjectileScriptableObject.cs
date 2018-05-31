using UnityEngine;

[CreateAssetMenu]
public class ProjectileScriptableObject : ScriptableObject
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

    [Header("Hier befinden sich alle einstellbaren Variablen für das Projektil")] //der Header kann so bleiben
    
    [Space]

    #region Effekte
    [Header("Effekte")]
    [Tooltip("Das Projektil-Prefab")]
    public GameObject rocket;
    #endregion

    [Space]

    #region Einstellungen
    [Header("Einstellungen")]
    [Tooltip("Maximale Munition")]
    public int maxAmmo = 5;

    [Tooltip("Unendlich Munition")]
    public bool infAmmo = false;

    [Tooltip("Feuerrate")]
    public float fireRate = 1.0f;

    [Tooltip("Geschwindigkeit des Projektils")]
    public float projectileSpeed = 100.0f;
    #endregion

    [Space]

    #region Regeln
    [Header("Regeln")]
    [Tooltip("Layer, die von Rakete getroffen werden können")]
    public LayerMask mask;
    #endregion
}

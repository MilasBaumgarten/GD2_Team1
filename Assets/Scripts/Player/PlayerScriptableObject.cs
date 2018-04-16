using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class PlayerScriptableObject : ScriptableObject {

    [Range(0.1f, 5f)]
    [Tooltip("horizontale Maus-Sensibilität (0.1 bis 5)")]
    public float h_sens = 1.0f;
    [Range(0.1f, 5f)]
    [Tooltip("vertikale Maus-Sensibilität (0.1 bis 5)")]
    public float v_sens = 1.0f;
}

using UnityEngine;

[CreateAssetMenu]
public class ProjectileScriptableObject : ScriptableObject {

    [Tooltip("Projektil")]
    public GameObject rocket;

    [Tooltip("Maximale Munition")]
    public int maxAmmo = 5;

    [Tooltip("Unendlich Munition")]
    public bool infAmmo = false;

    [Tooltip("Feuerrate")]
    public float fireRate = 1.0f;

    [Tooltip("Geschwindigkeit des Projektils")]
    public float projectileSpeed = 100.0f;
}

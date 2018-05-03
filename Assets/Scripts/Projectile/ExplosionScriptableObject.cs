using UnityEngine;

[CreateAssetMenu]
public class ExplosionScriptableObject : ScriptableObject {

	public GameObject explosionEffect;	//Partikeleffekt der Explosion
	public float radius;				//Explosionsradius
	public float explosionForce;		//Stärke der Explosionskraft
	//public bool destructible;			//Objekt wird/wird nicht zerstört
	public float effektLifeTime = 2.0f;
}

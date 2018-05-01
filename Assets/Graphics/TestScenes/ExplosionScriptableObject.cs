using UnityEngine;

[CreateAssetMenu]
public class ExplosionScriptableObject : ScriptableObject {

	public float force = 5.0f;
	public AnimationCurve timeFallOff;
	public AnimationCurve distanceFallOff;
	public float duration = 1.0f;
	public float radius = 3.0f;

	public float getCurveValue(float t, AnimationCurve curve){
		return curve.Evaluate(t);
	}
}

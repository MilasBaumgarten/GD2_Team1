using UnityEngine;

public class ObjectMovement : MonoBehaviour {

	public enum LoopType
    {
        Once,
        PingPong,
        Repeat
    }
    public LoopType loopType;

    public new Rigidbody rigidbody;
    //Start und Endpunkt der Tür, in den meisten fällen nur verschiebung in Y-Richtung
    public Vector3 start = -Vector3.forward;
    public Vector3 end = Vector3.forward;

    //Geschwindigkeit mit der das Movement durchgeführt wird
    public float duration = 1;

    //Kurve für die Animation
    public AnimationCurve accelCurve;

    public bool activate = false;

    //Evt TürSound
    public AudioSource onStartAudio;

    //Vorschau des Tür Movements
    [Range(0, 1)]
    public float previewPosition;
    float time = 0f;
    float position = 0f;
    float direction = 1f;

    protected CharacterController test;


    public void OnTriggerEnter(Collider other)
    {
        PerformInteraction();
    }

    public void PerformInteraction()
    {
        activate = true;
        if (onStartAudio != null) onStartAudio.Play();
    }


    public void FixedUpdate()
    {
        if(activate)
        {
            time = time + (direction * Time.deltaTime / duration);
            switch(loopType)
            {
                case LoopType.Once:
                    LoopOnce();
                    break;
                case LoopType.PingPong:
                    LoopPingPong();
                    break;
                case LoopType.Repeat:
                    LoopRepeat();
                    break;
            }
            PerformTransform(position);
        }
    }

    public void PerformTransform(float position)
    {
        var curvePosition = accelCurve.Evaluate(position);
        var pos = transform.TransformPoint(Vector3.Lerp(start, end, curvePosition));

        //Für die Vorschau des Movements
        if (Application.isEditor && !Application.isPlaying)
            rigidbody.transform.position = pos;

        rigidbody.MovePosition(pos);
    }



    void LoopPingPong()
    {
        position = Mathf.PingPong(time, 1f);
    }
    void LoopRepeat()
    {
        position = Mathf.Repeat(time, 1f);
    }
    void LoopOnce()
    {
        position = Mathf.Clamp01(time);
        if(position >= 1)
        {
            enabled = false;
        }
    }

}

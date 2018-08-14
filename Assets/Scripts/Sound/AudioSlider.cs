using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class AudioSlider : MonoBehaviour {

    public AudioMixer mixer;
    public string exposedMixerParameter;

    public float maxDaempfung = 0.0f;
    public float minDaempfung = -80.0f;

    protected Slider slider;

    void Awake()
    {
        slider = GetComponent<Slider>();

        float value;
        mixer.GetFloat(exposedMixerParameter, out value);

        slider.value = (value - minDaempfung) / (maxDaempfung - minDaempfung);

        slider.onValueChanged.AddListener(SliderValueChange);
    }

    void SliderValueChange(float value)
    {
        mixer.SetFloat(exposedMixerParameter, minDaempfung + value * (maxDaempfung - minDaempfung));
    }
}

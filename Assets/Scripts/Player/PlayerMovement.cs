using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))] //Spieler muss einen Rigidbody besitzen
public class PlayerMovement : MonoBehaviour
{
    [Header("Skript muss auf Spielerobjekt sitzen!")]
    [Tooltip("ScriptableObject des Spielers (Asset)")]
    public PlayerScriptableObject player;   //Referenz zum ScriptableObject

    [Tooltip("Rigidbody-Komponente des Spielers")]
    private Rigidbody rb;   //Rigidbody des Spielers
    [SerializeField]
    private bool isGrounded = false;    //Zustand ob Spieler auf dem Boden steht
    [SerializeField]
    private bool noClip; //Zustand ob der Spieler sich im NoClip
    [SerializeField]
    private LayerMask mask = 1 << 9;

    void Awake()
    {
        rb = GetComponent<Rigidbody>(); //Rigidbody initialisieren
    }

    void FixedUpdate()
    {
        float horizontalMovement = Input.GetAxis("Horizontal");
        float verticalMovement = Input.GetAxis("Vertical");

        Vector3 moveDirection = (horizontalMovement * transform.right + verticalMovement * transform.forward).normalized; //Richtung in die der Spieler sich bewegen möchte (normalisiert)

        if (!noClip)
        {   //normaler Bewegungsablauf
            rb.AddForce(moveDirection * (player.maxMoveSpeed - Vector3.Dot(moveDirection, rb.velocity)), ForceMode.Acceleration);  //Spieler mit Forces Bewegen

            if (isGrounded)
            {
                Vector3 slideMovement = Vector3.Project(rb.velocity, moveDirection) - rb.velocity;  //ungewünschte seitliche Bewegung berechnen
                rb.AddForce(slideMovement * slideMovement.magnitude, ForceMode.Acceleration);   //Spieler mit forces bremsen, wenn er auf dem boden steht
            }

            if (Input.GetKey(KeyCode.Space) && isGrounded)  //Springen, wenn der Spieler auf dem boden steht und Springen drückt (Space)
            {
                rb.AddForce(Vector3.up * player.jumpForce, ForceMode.Impulse);
                isGrounded = false;
            }

            if (!isGrounded)    //Prüfen ob man sich wieder auf dem Boden befindet
            {
                GroundCheck();
            }
        }
        else
        {   //Bewegung wenn NoClip aktiv ist
            float multiplier;

            if (Input.GetKey(KeyCode.LeftShift))    //Multiplikator erhöhen wenn der Spieler schneller  fliegen möchte (Shift links)
            {
                multiplier = player.noClipSprintMultiplier;
            }
            else
            {
                multiplier = 1;
            }

            transform.position += moveDirection * player.horizontalNoClipSpeed * multiplier;   //Spieler in Bewegungsrichtung verschieben

            if (Input.GetKey(KeyCode.Space))    //Spieler nach oben (Space) verschieben
            {
                transform.position += Vector3.up * player.verticalNoClipSpeed * multiplier;
            }
            if (Input.GetKey(KeyCode.LeftControl))  //Spieler nach unten (Strg links) verschieben
            {
                transform.position += -Vector3.up * player.verticalNoClipSpeed * multiplier;
            }
        }
        player.speed = Vector3.ProjectOnPlane(rb.velocity, Vector3.up).magnitude;  //momentane geschwindigkeit in x-z-Ebene, Variable zur Ausgabe/Debug
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.V))    //Spieler in NoClip-Zustand setzen (V) --> eventuell in anderes script und ToggleNoClip von dort aus aufrufen
        {
            ToggleNoClip();
        }
    }

    private void ToggleNoClip() //ändert den NoClip-Zustand des Spielers
    {
        bool ignore;
        if (noClip) //Fallunterscheidung noClip = true/false
        {
            noClip = false;
            ignore = false;
        }
        else
        {
            noClip = true;
            ignore = true;
            rb.velocity = Vector3.zero; //Spieler anhalten
        }
        rb.useGravity = !noClip;    //Schwerkraft auf den Spieler de-/aktivieren
        Physics.IgnoreLayerCollision(8, 9, ignore);    //Collision zwischen Spieler und Umwelt ausschalten (8 & 9 sind Layernummern)
    }

    private void GroundCheck()
    {
        if (Physics.Raycast(this.transform.position, Vector3.down, 1.01f, mask))    // Raycast nach unten um Boden zu finden
        {
            isGrounded = true;
        }
    }
}
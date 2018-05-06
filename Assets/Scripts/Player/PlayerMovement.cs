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
            if (player.isGrounded)
            {
                Vector3 slideMovement = Vector3.Project(rb.velocity, moveDirection) - rb.velocity;  //unerwünschte seitliche Bewegung berechnen
                rb.AddForce(slideMovement * slideMovement.magnitude, ForceMode.Acceleration);   //Spieler mit forces bremsen, wenn er auf dem boden steht
            }

			if (player.isGrounded){
				// maximale Spielergeschwindigkeit berechnen
				Vector2 maxVelocity = Vector2.zero;

				maxVelocity.x = player.maxMoveSpeed * Mathf.Abs(rb.velocity.normalized.x);
				maxVelocity.y = player.maxMoveSpeed * Mathf.Abs(rb.velocity.normalized.z);

				//Spieler mit Forces Bewegen
				rb.AddForce(moveDirection * player.acceleration, ForceMode.Acceleration);

				// reduziere Spielergeschwindigkeit auf maximale Geschwindigkeit, wenn Spieler zu schnell
				rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -maxVelocity.x, maxVelocity.x),
										  rb.velocity.y,
										  Mathf.Clamp(rb.velocity.z, -maxVelocity.y, maxVelocity.y));

			}
			else{
				// vertikale Bewegung des Spielers "errechnen"
				Vector3 verticalVelocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
				// Winkel zwischen Bewegungsrichtung und EingabeBewegung berechnen
				float angle = Mathf.Abs(Vector3.Angle(verticalVelocity, moveDirection));

				// Bewege Spieler per Forces in der Luft, falls Richtung != Bewegungsrichtung oder maximale Geschwindigkeit noch nicht erreicht
				if ((angle >= 45 && angle <= 335) || verticalVelocity.magnitude < player.maxMoveSpeed){
					rb.AddForce(moveDirection * player.acceleration * player.airSpeedModifier, ForceMode.Acceleration);
				}
			}

            if (Input.GetKey(KeyCode.Space) && player.isGrounded)  //Springen, wenn der Spieler auf dem boden steht und Springen drückt (Space)
            {
                rb.AddForce(Vector3.up * player.jumpForce, ForceMode.Impulse);
                player.isGrounded = false;
            }

            if (!player.isGrounded && rb.velocity.y < 0)    // Spieler beim fallen stärker beschleunigen
            {
                rb.AddForce(Vector3.up * Physics.gravity.y * player.fallspeed, ForceMode.Acceleration);
            }
            GroundCheck();  //prüfen, ob der Spieler sich noch auf dem Boden befindet

        }
        else
        {   //Bewegung wenn NoClip aktiv ist
            float multiplier;
            rb.velocity = Vector3.zero;

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
        if (Physics.Raycast(this.transform.position, Vector3.down, 1.301f, mask))    // Raycast nach unten um Boden zu finden
        {
            player.isGrounded = true;
        }
        else
        {
            player.isGrounded = false;
        }
    }
}
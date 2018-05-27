using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class PlayerMovement : MonoBehaviour
{
    public PlayerScriptableObject player;   //Referenz zum PlayerScriptableObject
    private CharacterController controller; //Referenz zum CharacterController

    private float verticalSpeed;    //Vertikale geschwindingkeit des Spielers
    private Vector3 pushDirection;  //Kraft und Richtung von äußeren einwirkungen auf den Spieler (z.B. Explosionen)

    void Start()
    {
        controller = GetComponent<CharacterController>();   //CharacterController initialisieren
    }

    void Update()
    {
        Vector3 move;   //Vektor mit dem bewegt wird

        if (Input.GetKeyDown(player.toggleNoClip))  //NoClip Ein-/Ausschalten
        {
            ToggleNoClip();
        }

        if (player.noClip)  //Bewegung, wenn der Spieler im NoClip ist
        {
            move = new Vector3(Input.GetAxis("Horizontal") * player.noClipSpeed, 0.0f, Input.GetAxis("Vertical") * player.noClipSpeed); //Inputrichtung bestimmen
            move = transform.TransformDirection(move);  //auf Worldspace ändern
            move = Vector3.ClampMagnitude(move, player.noClipSpeed);    //Geschwindigkeit auf noClipSpeed begrenzen

            move.y = (Input.GetKey(player.noClipAscend) ? 1 : 0) * player.noClipSpeed + (Input.GetKey(player.noClipDecend) ? -1 : 0) * player.noClipSpeed;  //vertikale Geschwindigkeit bestimmen

            if (Input.GetKey(player.noClipSprint))  //sprintet der Spieler?
            {
                move *= player.noClipSprintMultiplier;  //wenn ja den move-Vektor mit dem Multiplikator multiplizieren
            }
            transform.position += move * Time.deltaTime;    //Spieler bewegen
        }
        else
        {
            Vector3 moveDirection;  //temporärer Vektor für die Bewegungsrichtung
            moveDirection = new Vector3(Input.GetAxis("Horizontal") * player.moveSpeed, 0.0f, Input.GetAxis("Vertical") * player.moveSpeed);    //Inputrichtung bestimmen
            moveDirection = transform.TransformDirection(moveDirection);    //auf Worldspäce ändern
            moveDirection = Vector3.ClampMagnitude(moveDirection, player.moveSpeed);    //Geschwindigkeit auf moveSpeed begrenzen

            if (pushDirection.magnitude < controller.minMoveDistance)   //pushDirection auf 0 setzen wenn sie unter minMoveDistance fällt
            {
                pushDirection = Vector3.zero;
            }

            float gravity = Physics.gravity.y * player.gravityMultiplier;   //derzeit wirkende Fallbeschleunigung berechnen

            if (controller.isGrounded)  //Spieler steht auf dem Boden
            {
                if (Input.GetKey(player.jumpButton))    //bei Drücken der Sprungtaste springen
                {
                    verticalSpeed = player.jumpSpeed;
                }
                else    //ansonsten Fallbeschleunigung wirken lassen
                {
                    verticalSpeed = gravity * Time.deltaTime;   
                }
                pushDirection -= pushDirection * player.slowDownSpeed * Time.deltaTime; //Bewegung durch externe einflüsse am Boden abbremsen
            }
            else    //Spieler befindet sich nicht auf dem Boden
            {
                if (verticalSpeed < 0.0f)   //Spieler steigt
                {
                    verticalSpeed += gravity * player.fallMultiplier * Time.deltaTime;  //vertikaler Geschwindigkeit die Fallbeschleunigung mit Multiplikator abziehen
                }
                else    //Spieler fällt
                {
                    verticalSpeed += gravity * Time.deltaTime;  //vertikaler Geschwindigkeit die Fallbeschleunigung ohne Multiplikator abziehen
                }
            }

            if (Vector3.Angle(pushDirection, moveDirection) > 90)   //Spieler bewegt sich entgegengesetzt der pushDirection
            {
                pushDirection += (moveDirection - pushDirection) * player.airControlSpeed * Time.deltaTime; //moveDirection von pushDirection abziehen
                move = pushDirection + moveDirection;   //Bewegungsrichtung ist pushDirection + moveDirection
            }
            else    //Spieler bewegt sich in Richtung der pushDirection
            {
                if (pushDirection.magnitude >= moveDirection.magnitude) //pushDirection ist stärker als moveDirection
                {
                    pushDirection += (Vector3.Project(pushDirection, moveDirection) - pushDirection).normalized * player.airControlSpeed * Time.deltaTime;  //moveDirection der pushDirection entgegenwirken lassen
                    move = (pushDirection - Vector3.Project(moveDirection, pushDirection)) + moveDirection; //Bewegungsrichtung berechnen (könnte besser sein aber ich weis nicht wie (╯°□°）╯︵ ┻━┻ )
                }
                else
                {
                    move = moveDirection;   //Bewegungsrichtung ist moveDirection ¯\_(ツ)_/¯
                }
            }
            player.speed = move.magnitude; //Debugwert
            controller.Move(new Vector3(move.x, verticalSpeed, move.z) * Time.deltaTime);   //Spieler Bewegen
        }
    }

    private void ToggleNoClip() //Schaltet zwischen NoClip und normaler bewegung um
    {
        if (player.noClip)
        {
            player.noClip = false;
            controller.enabled = true;
        }
        else
        {
            player.noClip = true;
            verticalSpeed = 0.0f;
            controller.enabled = false;
        }
    }

    public void Push(Vector3 dir)   //Externe Einwirkungen entgegennehmen
    {
        pushDirection.x += dir.x;
        pushDirection.z += dir.z;
        verticalSpeed += dir.y;
    }
}

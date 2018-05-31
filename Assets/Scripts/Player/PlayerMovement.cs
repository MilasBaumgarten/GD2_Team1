using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class PlayerMovement : MonoBehaviour
{
    public PlayerScriptableObject player;   //Referenz zum PlayerScriptableObject
    private CharacterController controller; //Referenz zum CharacterController

    private Vector3 velocity;   //Vektor mit dem bewegt wird
    private Vector3 inputDirection; //Inputvektor des Spielers

    void Start()
    {
        controller = GetComponent<CharacterController>();   //CharacterController initialisieren
        inputDirection = Vector3.zero; //Initialisierung
        player.noClip = false;  //player soll nicht mit NoClip starten
    }

    void Update()
    {
        #region NoClipToggle
        if (Input.GetKeyDown(player.toggleNoClip))  //NoClip Ein-/Ausschalten
        {
            ToggleNoClip();
        }
        #endregion

        #region Input
        inputDirection.z = (Input.GetKey(player.forwardButton) ? 1 : 0) + (Input.GetKey(player.backwardButton) ? -1 : 0);   //vorwärts/rückwärts
        inputDirection.x = (Input.GetKey(player.rightButton) ? 1 : 0) + (Input.GetKey(player.leftButton) ? -1 : 0); //links/rechts
        inputDirection = transform.TransformDirection(inputDirection).normalized;   //auf Worldspace-Koordinaten anpassen und normalisieren
        #endregion

        #region NoClip
        if (player.noClip)  //Bewegung, wenn der Spieler im NoClip ist
        {
            inputDirection.y = (Input.GetKey(player.noClipAscend) ? 1 : 0) + (Input.GetKey(player.noClipDecend) ? -1 : 0);  //hoch/runter
            velocity = inputDirection * player.noClipSpeed * (Input.GetKey(player.noClipSprint) ? player.noClipSprintMultiplier : 1); //Bewegungsgeschwindigkeit berechnen
            transform.position += velocity * Time.deltaTime;    //Spieler bewegen
        }
        #endregion
        #region Normal Movement
        else
        {
            CeilingCheck(); //are we Bonking our head?
            inputDirection *= player.moveSpeed; //Input and moveSpeed anpassen
            float gravity = Physics.gravity.y * player.gravityMultiplier;   //derzeit wirkende Fallbeschleunigung berechnen

            if (controller.isGrounded)  //Spieler steht auf dem Boden
            {
                if (velocity.y < gravity * Time.deltaTime)   //Spieler ist mit hoher Vertikalgeschwindigkeit auf dem boden aufgekommen
                {
                    velocity.y = gravity * Time.deltaTime;  //Geschwindigkeit zurücksetzen
                }
                if (inputDirection.Equals(Vector3.zero))    //Spieler macht keinen Input
                {
                    velocity -= velocity.normalized * player.slowDownSpeed * Time.deltaTime;    //Geschwindigkeit linear verringern
                }
                else
                {
                    velocity = Vector3.ClampMagnitude(velocity + inputDirection, player.moveSpeed); //Geschwindigkeit gleicht dem Input des Spielers
                }
                if (Input.GetKey(player.jumpButton))    //bei Drücken der Sprungtaste springen
                {
                    velocity.y = player.jumpSpeed;  //boing~
                }
            }
            else    //Spieler befindet sich nicht auf dem Boden
            {
                if (velocity.y < 0.0f)   //Spieler steigt
                {
                    velocity.y += gravity * player.fallMultiplier * Time.deltaTime;  //vertikaler Geschwindigkeit die Fallbeschleunigung mit Multiplikator abziehen
                }
                else    //Spieler fällt
                {
                    velocity.y += gravity * Time.deltaTime;  //vertikaler Geschwindigkeit die Fallbeschleunigung ohne Multiplikator abziehen
                }
                if (!inputDirection.Equals(Vector3.zero))   //Spieler macht Input
                {
                    Vector3 temp = Vector3.ProjectOnPlane(velocity, Vector3.up);    //velocity auf x-z-Ebene projeziert, um y-komponente loszuwerden (╯°□°）╯︵ ┻━┻
                    Vector3 projection;

                    if (Vector3.Angle(temp, inputDirection) < 90)
                    {
                        projection = Vector3.Project(temp, inputDirection).normalized * temp.magnitude; //temp auf inputDirection projeziert; länge von temp
                    }
                    else
                    {
                        projection = inputDirection;    //keine projektion nötig :)
                    }
                    if (projection.magnitude > player.moveSpeed)    //vektoren zeigen in selbe hemisphäre
                    {
                        Vector3 vecTempProj = (projection - temp);  //Verbindungsvektor von temp zu projection
                        Vector3 tempPerp = Vector3.Cross(temp, Vector3.up).normalized * vecTempProj.magnitude; //Senkrechter Vektor auf temp; länge von vecTempProj
                        Vector3 dir = (vecTempProj + tempPerp) * 0.5f;  //das mittel zwischen vecTempProj; halbiert, um die länge beizubehalten
                        temp += dir * player.airControlSpeed * Time.deltaTime;  //neues temp berechnen
                    }
                    else
                    {
                        temp += (inputDirection - temp) * player.airControlSpeed * Time.deltaTime;  //temp in richtung input erhöhen
                    }
                    velocity = new Vector3(temp.x, velocity.y, temp.z); //neue Bewegungsgeschwindigkeit berechnen
                }
            }
            if (player.isGrappled)  //Spieler ist eingehakt
            {
                Vector3 testPosition = this.transform.position + velocity * Time.deltaTime; //Position, wo der Spieler sich im nächsten Frame befinden würde
                Vector3 dist = testPosition - player.anchorPosition;  //abstandsvektor von grapplePosition zu testPosition

                if ((testPosition - player.anchorPosition).magnitude > player.grappleDistance)    //Spieler würde sich außerhalb der grappleDistance begeben
                {
                    testPosition  = player.anchorPosition + (testPosition - player.anchorPosition).normalized * player.grappleDistance; //Testposition auf Kreisbahn halten
                    velocity = (testPosition - this.transform.position).normalized * velocity.magnitude;    //Geschwindigkeit des Spielers ändern
                }
            }
            controller.Move(velocity * Time.deltaTime);   //Spieler Bewegen
        }
        #endregion
    }

    private void ToggleNoClip() //Schaltet zwischen NoClip und normaler bewegung um
    {
        if (player.noClip)
        {
            player.noClip = false;
            controller.enabled = true;
            inputDirection = Vector3.zero;
        }
        else
        {
            player.noClip = true;
            velocity.y = 0.0f;
            controller.enabled = false;
        }
    }

    private void CeilingCheck() //Schaut nach ob sich etwas über dem Spieler befindet
    {
        RaycastHit hit;
        if (Physics.Raycast(this.transform.position, Vector3.up, out hit, controller.height / 2 + 0.005f, 1 << LayerMask.NameToLayer("Environment")) && velocity.y > 0) //bonks his head
        {
            velocity.y = 0.0f;   //oof
        }
    }

    public void Push(Vector3 dir)   //Externe Einwirkungen entgegennehmen
    {
        velocity += dir;
    }
}

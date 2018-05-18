using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float moveSpeed;
    public float jumpSpeed;
    public float fallMultiplier;
    public float gravityMultiplier;
    private float gravity;
    public float speed;
    public float verticalSpeed;
    public float slowdownSpeed;
    public float airControlSpeed;

    public Vector3 pushDirection;
    public Vector3 moveDirection;
    private CharacterController controller;

    // Use this for initialization
    void Start()
    {
        controller = GetComponent<CharacterController>();
        gravity = Physics.gravity.y * gravityMultiplier;
    }

    // Update is called once per frame
    void Update()
    {
        moveDirection = new Vector3(Input.GetAxis("Horizontal") * moveSpeed, 0.0f, Input.GetAxis("Vertical") * moveSpeed);
        moveDirection = transform.TransformDirection(moveDirection);
        moveDirection = Vector3.ClampMagnitude(moveDirection, moveSpeed);
        

        if (pushDirection.magnitude < 0.2f)
        {
            pushDirection = Vector3.zero;
        }

        if (controller.isGrounded)
        {
            if (Input.GetKey(KeyCode.Space))
            {
                verticalSpeed = jumpSpeed;
            }
            else
            {
                verticalSpeed = gravity * Time.deltaTime;
            }
            pushDirection -= pushDirection * slowdownSpeed * Time.deltaTime;
        }
        else
        {
            verticalSpeed += gravity * Time.deltaTime;

            if (controller.velocity.y < 0.0f)
            {
                verticalSpeed += gravity * fallMultiplier * Time.deltaTime;
            }
        }
        Vector3 move;
        if (Vector3.Angle(pushDirection, moveDirection) > 90)
        {
            pushDirection += (moveDirection - pushDirection) * airControlSpeed * Time.deltaTime;
            move = pushDirection + moveDirection;
        }
        else
        {
            pushDirection += (Vector3.Project(pushDirection, moveDirection.normalized) - pushDirection).normalized * airControlSpeed * Time.deltaTime;
            move = (pushDirection - Vector3.Project(moveDirection, pushDirection)) + moveDirection;
        }

        speed = move.magnitude; //Debug
        controller.Move(new Vector3(move.x, verticalSpeed, move.z) * Time.deltaTime);
    }

    public void Push(Vector3 dir)
    {
        pushDirection.x += dir.x;
        pushDirection.z += dir.z;
        verticalSpeed += dir.y;
    }
}

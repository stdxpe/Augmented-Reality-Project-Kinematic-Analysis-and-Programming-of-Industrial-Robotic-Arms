using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hand_Rotator : MonoBehaviour
{

    [SerializeField] float rotationSpeed = 100f;
    bool dragging = false;
    Rigidbody rb;
    // Start is called before the first frame update
    
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void OnMouseDrag() 
    {
        dragging=true;
    }
    
    // Update is called once per frame
    void Update()
    {
        if(Input.GetMouseButtonUp (0)){
              dragging=false;
        }
    }

    void FixedUpdate() 
    {
        if(dragging){
            float z = Input.GetAxis("Mouse Z") * rotationSpeed * Time.fixedDeltaTime;
            float y = Input.GetAxis("Mouse Y") * rotationSpeed * Time.fixedDeltaTime;

            rb.AddTorque (Vector3.forward*z);
            // rigidbody.AddTorque (Vector3.right*y);
        }
    }
}

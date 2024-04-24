using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandRot : MonoBehaviour
{


      [SerializeField] float rotationSpeed = 10f;
   

    void OnMouseDrag() 
    {
        float rotX = Input.GetAxis("Mouse X") * rotationSpeed * Mathf.Deg2Rad;
        // float rotY = Input.GetAxis("Mouse Y") * rotationSpeed * Mathf.Deg2Rad;
        //  float rotZ = Input.GetAxis("Mouse Z") * rotationSpeed * Mathf.Deg2Rad;

        transform.RotateAround(Vector3.up, rotX);
        // transform.RotateAround(Vector3.right,-rotY);
        // transform.RotateAround(Vector3.forward,rotZ);
    }
   


}

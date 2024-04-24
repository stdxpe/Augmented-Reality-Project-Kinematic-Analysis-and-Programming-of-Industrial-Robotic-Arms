using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateTest : MonoBehaviour
{


    Quaternion targetAngle_90=Quaternion.Euler(0,0,45);
    
public Vector3 vector3;

    // public Quaternion qNew = Quaternion.Euler(vector3);

    

// Quaternion qNew = Quaternion.Euler( new Vector3(
//     transform.localEulerAngles.x,
//     transform.localEulerAngles.y,
//     transform.localEulerAngles.z + 45
// ));
    
    Quaternion targetAngle_0=Quaternion.Euler(0,0,0);
        public Quaternion currentAngle;
    // Start is called before the first frame update
    void Start()
    {
        // currentAngle=targetAngle_0;
        currentAngle = transform.localRotation;
//         transform.localRotation = Quaternion.Euler( new Vector3(
//     navigationCanvas.transform.eulerAngles.x,
//     navigationCanvas.transform.eulerAngles.y,
//     camRotationToWatch.transform.eulerAngles.z
// ));

vector3 = new Vector3(transform.localEulerAngles.x,
    transform.localEulerAngles.y,
    transform.localEulerAngles.z + (-45));
    }

    // Update is called once per frame

    void Update()
    {
//        if(Input.GetKey(KeyCode.Alpha1)){
//          // transform.Rotate(0,0,1);
//         //  transform.rotation = Quaternion.Euler(0,0,45);
        
// print("____LOCAL_____");
//         print(transform.localEulerAngles.x);
//         print(transform.localEulerAngles.y);
//         print(transform.localEulerAngles.z);
//         print("___GLOBAL______");
//         print(transform.eulerAngles.x);
//         print(transform.eulerAngles.y);
//         print(transform.eulerAngles.z);
//             print("___LocalRotation______");
//         print(transform.localRotation);

//     print("____END_____");




//         currentAngle = transform.localRotation;

//         // changeCurrentAngle();
//         transform.localRotation = Quaternion.Slerp(currentAngle, Quaternion.Euler(vector3), 0.01f);
//         // this.transform.rotation = Quaternion.Slerp(this.transform.rotation, targetAngle_90, 0.2f);
//         // Quaternion newEulerAngle = Quaternion.Euler(finalAngleX + xRotationOffset, finalAngleY + yRotationOffset, finalAngleZ); //Apply new angle to object
 
//         //      transform.rotation = Quaternion.RotateTowards(transform.rotation, newEulerAngle, turningRate * Time.deltaTime);
//        }
        if(Input.GetKey(KeyCode.Q)){
             transform.Rotate(0,0,1);
        }
         if(Input.GetKey(KeyCode.W)){
             transform.Rotate(0,0,-1);
        }
       
       

              

    }

    void changeCurrentAngle(){
        if(currentAngle.eulerAngles.z==targetAngle_0.eulerAngles.z){
            currentAngle=targetAngle_90;
        }
        else{
            currentAngle=targetAngle_0;
        }
    }
}

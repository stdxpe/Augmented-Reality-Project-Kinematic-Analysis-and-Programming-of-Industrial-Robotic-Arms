using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Axis2_Rotate : MonoBehaviour
{

    // Quaternion targetAngle_90=Quaternion.Euler(transform.localEulerAngles.x,transform.localEulerAngles.y,45);
    public Quaternion currentAngle;

    // [SerializeField] private Color startColor=Color.white, endColor=Color.black;

     [SerializeField] private Transform startTransform = null, endTransform = null;
    [SerializeField] [Range(0f,1f)] private float lerpValue=0;

    // [SerializeField] private string xAcisi=this.transform.localEulerAngles.x;
    // Start is called before the first frame update
    void Start()
    {
        // currentAngle=this.transform.rotation;
    }

    // Update is called once per frame
    void Update()
    {
    // print("____LOCAL_____");
    //     print(transform.localEulerAngles.x);
    //     print(transform.localEulerAngles.y);
    //     print(transform.localEulerAngles.z);
    //     print("___GLOBAL______");
    //     print(transform.eulerAngles.x);
    //     print(transform.eulerAngles.y);
    //     print(transform.eulerAngles.z);
    // print("____END_____");

        
// if(Input.GetKey(KeyCode.Alpha1)){

//     // transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(transform.localEulerAngles.x,transform.localEulerAngles.y, 45), 0.001f);
//     transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0,0, 45), 0.01f);
// }

// this.transform.rotation = Quaternion.Slerp(this.transform.rotation, targetAngle_90, 0.2f);

// currentAngle=this.transform.rotation;
//    transform.rotation = Quaternion.Lerp(transform.rotation, targetAngle_90, 0.2f);
   




        
          if(Input.GetKey(KeyCode.W)){
             transform.Rotate(0,0,1);
        }
         if(Input.GetKey(KeyCode.S)){
             transform.Rotate(0,0,-1);
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Axis1_Rotate : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

// if(Input.GetKey(KeyCode.1)){
//     transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0,0, 45), 0.01f);
// }

      


         if(Input.GetKey(KeyCode.Q)){
             transform.Rotate(0,0,1);
        }
         if(Input.GetKey(KeyCode.A)){
             transform.Rotate(0,0,-1);
        }
    }
}

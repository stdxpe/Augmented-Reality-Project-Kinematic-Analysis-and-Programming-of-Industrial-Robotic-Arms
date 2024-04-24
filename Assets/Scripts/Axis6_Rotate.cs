using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Axis6_Rotate : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
          if(Input.GetKey(KeyCode.Y)){
             transform.Rotate(0,0,1);
        }
         if(Input.GetKey(KeyCode.H)){
             transform.Rotate(0,0,-1);
        }
    }
}

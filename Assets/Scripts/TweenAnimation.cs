using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TweenAnimation : MonoBehaviour
{

public iTween.EaseType easeType = iTween.EaseType.easeInOutSine;
public iTween.LoopType loopType = iTween.LoopType.none;
public int rotateDegree = 45;

public float durationTime = 1f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
            if(Input.GetKey(KeyCode.Alpha2)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegree, "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal",true));
            }

            if(Input.GetKey(KeyCode.Alpha3)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegree, "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal",true));
            }

            if(Input.GetKey(KeyCode.Alpha4)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegree, "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal",true));
            }
            

            
    }
}

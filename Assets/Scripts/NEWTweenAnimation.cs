using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NEWTweenAnimation : MonoBehaviour
{
    public iTween.EaseType easeType = iTween.EaseType.easeInOutSine;
    public iTween.LoopType loopType = iTween.LoopType.none;
    // [SerializeField] public int rotateDegreeRound0 = 180;
    // [SerializeField] public int rotateDegreeRound1 = 30;
    // [SerializeField] public int rotateDegreeRound2 = 90;
    // [SerializeField] public int rotateDegreeRound3 = 45;
    // [SerializeField] public int rotateDegreeRound4 = 60;
   

    [SerializeField]  public List<int> rotateDegrees = new List<int>() { 60 , -90 , -30 , 30 , 0 };


    // [SerializeField] public List<int> rotateDegrees = [ 45 , 30 , 45 , 30 , 45 ];
    int count = 0;


    public float durationTime = 1f;


    // Update is called once per frame
    void Update()
    {

            
           if(count>=5){
               count=0;
           }

            if(Input.GetKey(KeyCode.Alpha2)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegrees[count], "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal",true));
            count++;
            // Thread.Sleep(1000);
            // System.Threading.Thread.Sleep(500);
            }
            

            if(Input.GetKey(KeyCode.Alpha3)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegrees[count], "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal",true));
            }

            if(Input.GetKey(KeyCode.Alpha4)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegrees[count], "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal",true));
            }
    }
}

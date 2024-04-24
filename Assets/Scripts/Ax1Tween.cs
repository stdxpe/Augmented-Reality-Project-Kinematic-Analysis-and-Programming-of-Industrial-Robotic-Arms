using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ax1Tween : MonoBehaviour
{
    public iTween.EaseType easeType = iTween.EaseType.easeInOutSine;
    public iTween.LoopType loopType = iTween.LoopType.none;
    // [SerializeField] public int rotateDegreeRound0 = 180;
    // [SerializeField] public int rotateDegreeRound1 = 30;
    // [SerializeField] public int rotateDegreeRound2 = 90;
    // [SerializeField] public int rotateDegreeRound3 = 45;
    // [SerializeField] public int rotateDegreeRound4 = 60;
   

    [SerializeField]  public List<int> rotateDegrees1 = new List<int>() { 135 , -90 , 180 , 135 , 90 };

    private int count1 = 0;


    public float durationTime = 1f;


    // Update is called once per frame
    void Update()
    {

            
        //    if(count1==5){
        //        count1=0;
        //    }

            if(Input.GetKey(KeyCode.Alpha2)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegrees1[count1%4], "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal", true));
            count1++;
            // Thread.Sleep(1000);
            // System.Threading.Thread.Sleep(500);
            }
            

           
    }
}

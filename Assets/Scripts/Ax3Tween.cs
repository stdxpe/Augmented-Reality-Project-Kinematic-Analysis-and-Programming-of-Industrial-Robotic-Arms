using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ax3Tween : MonoBehaviour
{
    public iTween.EaseType easeType = iTween.EaseType.easeInOutSine;
    public iTween.LoopType loopType = iTween.LoopType.none;
    // [SerializeField] public int rotateDegreeRound0 = 180;
    // [SerializeField] public int rotateDegreeRound1 = 30;
    // [SerializeField] public int rotateDegreeRound2 = 90;
    // [SerializeField] public int rotateDegreeRound3 = 45;
    // [SerializeField] public int rotateDegreeRound4 = 60;
   

    [SerializeField]  public List<int> rotateDegrees3 = new List<int>() { -60 , 150 , -120 , 60 , -30 };


    // [SerializeField] public List<int> rotateDegrees = [ 45 , 30 , 45 , 30 , 45 ];
    private int count3 = 0;


    public float durationTime = 1f;


    // Update is called once per frame
    void Update()
    {

            
        //    if(count3==5){
        //        count3=0;
        //    }

            if(Input.GetKey(KeyCode.Alpha2)){
            iTween.RotateTo(this.gameObject, iTween.Hash("z",rotateDegrees3[count3%4], "time", durationTime, "easeType", easeType,"loopType", loopType, "islocal", true));
            count3++;
            // Thread.Sleep(1000);
            // System.Threading.Thread.Sleep(500);
            }
            

    }
}

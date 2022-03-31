using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tank : MonoBehaviour
{


    [Range(-100, 100)]
    public float speed = 10;

    [Range(-360, 360)]
    public float rotSpeed = 10;

    public Transform target;

    public float ellapsed = 0;    

    public float time = 10;
    // Start is called before the first frame update
    void Start()
    {
        //speed = 100;

        float dist = Vector3.Distance(target.position, transform.position);
        speed = dist / time;
    }

    public Tank()
    {
        speed = -100;
    }


    // Update is called once per frame
    void Update()
    {
        transform.Translate(0, 0, speed * Time.deltaTime * Input.GetAxis("Vertical"));
        transform.Rotate(0, rotSpeed * Time.deltaTime * Input.GetAxis("Horizontal"), 0);
        

        /*
        if (Vector3.Distance(target.position, transform.position) > 0.1f)
        {
            ellapsed += Time.deltaTime;
        
            transform.Translate(0, 0, speed * Time.deltaTime);
            Debug.Log(ellapsed);
        }
        else
        {
            
        }
        */
    }
}

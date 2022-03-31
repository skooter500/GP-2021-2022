using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wall : MonoBehaviour
{
    public int width = 10;
    public int height = 10;
     
    // Start is called before the first frame update
    void Start()
    {
        int halfWidth = width / 2;
        for(int row = 0 ; row < height; row ++)
        {
            for(int col = 0 ; col < width ; col ++)
            {
                GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);

                Vector3 pos = new Vector3(col - halfWidth, 0.5f + row, 0);
                pos = transform.TransformPoint(pos);

                cube.transform.position = pos;
                cube.transform.rotation = transform.rotation;

                cube.AddComponent<Rigidbody>();

                cube.GetComponent<Renderer>().material.color
                    = Color.HSVToRGB(Random.Range(0.0f, 1.0f), 1, 1);
                cube.transform.parent = transform;
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}

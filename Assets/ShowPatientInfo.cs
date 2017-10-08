using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ShowPatientInfo : MonoBehaviour {

	public Image img;

	// Use this for initialization
	public void ToggleChanged (bool value) {
		img.enabled = value;
	}
	
	// Update is called once per frame

}

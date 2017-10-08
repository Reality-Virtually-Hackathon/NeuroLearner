using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayImg : MonoBehaviour {

	public GameObject Profile;

	// Use this for initialization
	void Start () {
		Profile.SetActive(false);
	}

	public void OnSubmit () {
		Profile.SetActive (true);
	}
}

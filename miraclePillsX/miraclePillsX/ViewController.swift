//
//  ViewController.swift
//  miraclePillsX
//
//  Created by Amr Elsayed on 10/8/17.
//  Copyright © 2017 amagdyX. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource	, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["New York" , "Cairo" , "Dubai" , "london"  , "California"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = 	self
        statePicker.delegate = self
//        self.view.backgroundColor = UIColor.purple
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      
        statePickerBtn.setTitle(states[row], for: UIControlState.normal ) //UIControlState()
        
        statePicker.isHidden = true
    }

}


//
//  LoveViewController.swift
//  Peter_L3
//
//  Created by zero plus on 2016/10/20.
//  Copyright © 2016年 zero plus. All rights reserved.
//

import UIKit

class LoveViewController: UIViewController {
    
    @IBOutlet weak var starTextField: UITextField!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    @IBOutlet weak var trueSwitch: UISwitch!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var yesOrNoSegment: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func trueLoveButton(_ sender: AnyObject) {
        //var yesOrNo: Bool
        let star = starTextField.text!
        let gender = genderSegment.selectedSegmentIndex
        let trueLove = trueSwitch.isOn
        let age:Int! = Int(ageLabel.text!)
        
        yesOrNoSegment.isHidden = false
        
        if star != "Sagittarius" && gender == 0 && trueLove && age <= 40 && age >= 25
        {
            yesOrNoSegment.selectedSegmentIndex = 0
        }else{
            yesOrNoSegment.selectedSegmentIndex = 1
        }
        
    }
    @IBAction func ageSlider(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        ageLabel.text = "\(currentValue)"
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

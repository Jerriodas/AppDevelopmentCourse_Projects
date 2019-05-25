//
//  ViewController.swift
//  ProyectoClase5
//
//  Created by SSCesar on 10/09/18.
//  Copyright © 2018 SSCesar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var Reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        
        colorUpdate()
        
        controlUpdate()
        
        
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        colorUpdate()
        controlUpdate()
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        colorUpdate()
    }
    
    
    func colorUpdate(){
        var red: CGFloat = 0
        var blue: CGFloat = 0
        var green: CGFloat = 0
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func controlUpdate(){
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        
    }
    @IBAction func reset(_ sender: AnyObject) {
        redSlider.value = 1
        blueSlider.value = 1
        greenSlider.value = 1
        
        colorUpdate()
        controlUpdate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  light
//
//  Created by Jerry Servicio Social on 31/05/18.
//  Copyright © 2018 Jerry Servicio Social. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var LightOn = true
    
    @IBOutlet weak var lightButton: UIButton!
    
    
    @IBAction func ButtonPressed(_ sender: Any) {
        
        LightOn = !LightOn
        updateUI()
        
    }
    
    
    func updateUI() {
        
        if LightOn {
            view.backgroundColor = .white
            lightButton.setTitle("OFF", for: .normal)
            
        }else{
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        updateUI()
    }

    


}


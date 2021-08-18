//
//  ViewController.swift
//  TrafficLights
//
//  Created by Nechaev Sergey  on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!

    @IBOutlet weak var button: UIButton!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.layer.masksToBounds = true
        redLight.alpha = 0.3
        
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        yellowLight.layer.masksToBounds = true
        yellowLight.alpha = 0.3
        
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.layer.masksToBounds = true
        greenLight.alpha = 0.3
        
        button.layer.cornerRadius = 10

    }
    

    @IBAction func buttonPressed() {
        button.setTitle("Next", for: .normal)
        
        switch count {
        case 0:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            count += 1
        case 1:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            count += 1
        case 2:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            count = 0
        default:
            count = 0
            
        }
        
    }
    
}


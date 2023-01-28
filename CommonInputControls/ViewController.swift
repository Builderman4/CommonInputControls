//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Ibrahim Syed on 2023-01-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    

    @IBOutlet var button: UIButton!
    

    @IBAction func buttonTapped(_ sender: Any) {
    print("Button wass tapped!")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off")
        }
        
        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
}


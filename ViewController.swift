//
//  ViewController.swift
//  Color Picker
//
//  Created by KajanKowshik on 2/2/20.
//  Copyright © 2020 KajanKowshik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var DisplayingLabel: UILabel!
    @IBOutlet weak var ResetButton: UIButton!
    
    var RedColor : Float = 0
    var GreenColor : Float = 0
    var BlueColor : Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func RedSliderAction(_ sender: UISlider) {
        ChangeColors()
    }
    @IBAction func GreenSliderAction(_ sender: UISlider) {
        ChangeColors()
    }
    @IBAction func BlueSliderAction(_ sender: UISlider) {
        ChangeColors()
    }
    
    func ChangeDisplayColor() {
        DisplayingLabel.backgroundColor = UIColor(red: 0.5 , green: 0.7, blue: 0.6, alpha: 1.0)
        
        ChangeLabelNumber()
    }
    
    func ChangeColors(){
        RedColor = RedSlider.value
        GreenColor = GreenSlider.value
        BlueColor = BlueSlider.value
        ChangeDisplayColor()
        
    }
    
    func ChangeLabelNumber(){
        let RoundedRed = String(format: "%0.0f", (RedColor *  255))
        let RoundedGreen = String(format: "%0.0f", (GreenColor *  255))
        let RoundedBlue = String(format: "%0.0f", (BlueColor *  255))
        
        RedLabel.text = "Red: \(RoundedRed)"
        GreenLabel.text = "Green: \(RoundedGreen)"
        BlueLabel.text = "Blue: \(RoundedBlue)"
    }
    
    @IBAction func ResetButtonAction(_ sender: UIButton) {
        ResettingSliders()
    }
    
    func ResettingSliders(){
    RedSlider.value = 0.5
    GreenSlider.value = 0.5
    BlueSlider.value = 0.5
        
        RedLabel.text = ("Red: 0")
        GreenLabel.text = ("Red: 0")
        BlueLabel.text = ("Red: 0")

    }
}


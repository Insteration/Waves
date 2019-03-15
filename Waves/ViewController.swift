//
//  ViewController.swift
//  Waves
//
//  Created by Artem Karmaz on 3/14/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorButtons: [UIButton]!
    @IBOutlet var actionButtons: [UIButton]!
    @IBOutlet weak var frequencyTextField: UITextField!
    @IBOutlet weak var amplitudeTextField: UITextField!
    @IBOutlet weak var helperTextView: UITextView!
    
    
    var frequency = 0.0
    var amplitude = 0.0
    var color = UIColor()
    
    var myView = UIView()
    
//      add(frequency: 2, amplitude: 30, color: UIColor.orange)
//    var waveModel = WaveModel()
//    var waveView = WaveView()
    
    var waveView = WaveView()
    
    
//    var waveStorage = WaveStorage()
//    var waves: WaveModel?
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

//        myView.frame = CGRect(x: 0, y: 0, width: 300, height: 400)
////        myView.backgroundColor = UIColor.purple
        

        myView = waveView.myView
        view.addSubview(myView)
        
        waveView.setup()
        
        helperTextView.layer.cornerRadius = 7
        helperTextView.clipsToBounds = true
        
        colorButtons.forEach {
            $0.layer.cornerRadius = 10
            $0.clipsToBounds = true
        }
        
        actionButtons.forEach {
            $0.layer.cornerRadius = 10
            $0.clipsToBounds = true
        }
        
        
        
//        var waveStorage = SineStore
        
//        waveView.setup()
//        SineStore.sharedInstance.add(frequency: 1, amplitude: 20, color: randomColor())
        
//        waves?.setup()
//        print(waveStorage.array)
    }
    
    
    
    func randomColor() -> UIColor {
        let hue = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        return UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }

    @IBAction func generateSineWaveButtonAction(_ sender: UIButton) {
        wavesArray[0] = Wave(frequency: Double(frequencyTextField.text!) ?? 0.0, amplitude: Double(amplitudeTextField.text!) ?? 0.0, color: .blue)
        
        
//        waveView.setup()
//        waveView.drawSineWaves()
//        waveView.run()

    }
    
    @IBAction func clearSineWaveButtonAction(_ sender: UIButton) {
        
        waveView.clearDraw()

//        waveView.pause()
//        waveStorage.add(frequency: 2, amplitude: 30, color: .orange)
//        WaveStorage.init()
    }
    
}


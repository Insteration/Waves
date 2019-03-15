//
//  WaveViewDraw.swift
//  Waves
//
//  Created by Artem Karmaz on 3/14/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//


import UIKit

var wavesArray = [
    Wave(frequency: 24, amplitude: 84, color: .green),
    Wave(frequency: 3, amplitude: 140, color: .red)
]

func getAtIndex(index: Int) -> Wave {
    // TODO: Iterator
    return wavesArray[index]
}

class WaveView {
    
    // MARK: - Properties
    var myView = UIView()
    var centerY = 0.0
    var stepAxis_coordinates_X = 0.0
    var steps = 200
    let shapeLayer = CAShapeLayer()
    var timer: Timer!
    

    
//    var isRunning = true
    
    //    var displayAsSum = true
    
    
    
    
    // MARK: - Init

    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        print("Its iverride init")
//        print("Array is - \(wavesArray.count)")
////        setup()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        print("Its requred init")
//
//        setup()
//    }
    
    
    
    
    // MARK: - Setup
    
    func setup() {
        myView.frame = CGRect(x: 200, y: 500, width: 100, height: 100)
        myView.backgroundColor = UIColor.purple
        
        myView.layer.addSublayer(shapeLayer)
        
        centerY = Double(myView.frame.height) / 2
        stepAxis_coordinates_X = Double(myView.frame.width / CGFloat(steps))
                print("setup")
        timer = Timer.scheduledTimer(timeInterval: 0.04, target: self, selector: #selector(onTimer(timer:)), userInfo: nil, repeats: true)

    }
    
    
    
    // MARK: - Utilities
    
//    func pause() {
//        isRunning = false
//    }
//
//    func run() {
//        isRunning = true
//    }
    
    @objc func onTimer(timer: Timer) {
        drawSineWaves()
    }
    
    func clearDraw() {
        
    }
    
    
    func drawSineWaves() {
        
        // ------------------------------------------------------------------
        // Sum Sine waves
            
            let sumPath = UIBezierPath()
            var sinSum = Array<CGFloat>(repeating: 0, count: steps)
            
            for i in 0..<wavesArray.count {
                let path = UIBezierPath()
                let sine = getAtIndex(index: i)
                
                sine.timeWaveStep(timer: 0.2)
                
                let f = Double.pi * 2 / Double(steps) * sine.frequency
                
                for p in 0..<steps {
                    let inc = Double(p)
                    let x = inc * stepAxis_coordinates_X
                    let y = sin((Double(p) * f)+sine.phase+sine.time) * sine.amplitude
                    sinSum[p] += CGFloat(y)
                    
                    if p == 0 {
                        path.move(to: CGPoint(x: x, y: y + centerY))
                    } else {
                        path.addLine(to: CGPoint(x: x, y: y + centerY))
                    }
                }
                
                sine.shapeLayer.path = path.cgPath
                myView.layer.addSublayer(sine.shapeLayer)
                sine.shapeLayer.lineWidth = 2
                sine.shapeLayer.fillColor = UIColor.clear.cgColor
                sine.shapeLayer.strokeColor = sine.color.cgColor // UIColor.redColor().CGColor
            }
            
            sumPath.move(to: CGPoint(x: 0, y:sinSum[0] + CGFloat(centerY)))
        
            //        for i in 1..<sinSum.count {
            //            let x = CGFloat(i) * CGFloat(stepX)
            //            sumPath.addLine(to: CGPoint(x: x, y: sinSum[i] + CGFloat(centerY)))
            //        }
            
            //        if displayAsSum {
            //            shapeLayer.path = sumPath.cgPath
            //            shapeLayer.fillColor = UIColor.clear.cgColor
            //            shapeLayer.lineWidth = 2
            //            shapeLayer.strokeColor = UIColor.white.cgColor
            //
            //            layer.addSublayer(shapeLayer)
            //        } else {
            //            shapeLayer.path = nil
            //        }
    }
}


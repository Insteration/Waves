////
////  WaveModel.swift
////  Waves
////
////  Created by Artem Karmaz on 3/14/19.
////  Copyright © 2019 Johansson Group. All rights reserved.
////
//
////
////  SineWave.swift
////  Sine Wave
////
////  Created by mitchell hudson on 2/23/16.
////  Copyright © 2016 mitchell hudson. All rights reserved.
////
//
//import UIKit
//
//class WaveModel: UIView {
//    var t: Double = 0
//    var step: CGFloat = 0.15
//    var range: CGFloat = 100
//    var phase: CGFloat = 0
//    var timer: Timer!
//    var color: UIColor = .red
//    
//    var pathLayer = CAShapeLayer()
//    
//    
//    func setup() {
//        layer.addSublayer(pathLayer)
//        Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(onTimer(timer:)), userInfo: nil, repeats: true)
//    }
//    
//    
//    init(frame: CGRect, range: CGFloat, phase: CGFloat, step: CGFloat) {
//        super.init(frame: frame)
//        
//        self.range = range
//        self.phase = phase
//        self.step = step
//        
//        setup()
//    }
//    
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        setup()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        
//        setup()
//    }
//    
//    override func draw(_ rect: CGRect) {
//        update()
//    }
//    
//    @objc func onTimer(timer: Timer) {
//        t += Double(step)
//        update()
//    }
//    
//    func update() {
//        // Draw a sine curve with a fill
//        
//        // -------------------------------------------------------------------
//        // Draw seprate sine waves
//        
//        let centerY = frame.height / 2  // find the vertical center
//        let steps = 200                 // Divide the curve into steps
//        let stepX = frame.width / CGFloat(steps) // find the horizontal step distance
//        
//        // Make a path
//        let path = UIBezierPath()
//        // Start in the lower left corner
//        path.move(to: CGPoint(x: 0, y: frame.height))
//        // Draw a line up to the vertical center
//        path.addLine(to: CGPoint(x: 0, y: centerY))
//        // Loop and draw steps in straingt line segments
//        for i in 0...steps {
//            let x = CGFloat(i) * stepX
//            let y = (sin((Double(i) * 0.08)+t) * Double(range)) + Double(centerY)
//            path.addLine(to: CGPoint(x: x, y: CGFloat(y)))
//        }
//        
//        // Draw down to the lower right
//        path.addLine(to: CGPoint(x: frame.width, y: frame.height))
//        // Close the path
//        path.close()
//        
//        pathLayer.path = path.cgPath
//        pathLayer.fillColor = color.cgColor
//        
//    }
//    
//    
//}

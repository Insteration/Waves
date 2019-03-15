//
//  Wave.swift
//  Waves
//
//  Created by Artem Karmaz on 3/14/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//


import Foundation
import UIKit

class Wave {
    
    // MARK: - Properties
    
    /// Provides each Sine with a unique id.
//    static var idCount: Int = 0
    
    var amplitude: Double!
    var frequency: Double!
    var phase: Double = 0
    var time: Double = 0
    var color: UIColor!
//    var id: Int
    
    let shapeLayer = CAShapeLayer()
    
    
    // MARK: - Init
    
    /** Initialize a Sine with frequency, Amplitude, and Color
     - parameters:
     - frequency: Double
     - amplitude: Double
     - color: UIColor
     */
    
    init(frequency: Double, amplitude: Double, color: UIColor) {
        self.frequency = frequency
        self.amplitude = amplitude
        self.color = color
//        self.id = Wave.inc()
    }
    
    
    // MARK: - Methods
    
    /** Static mathod provides a unique id for each Sine
     - returns: Int */
    
//    static func inc() -> Int {
//        Wave.idCount += 1
//        return Wave.idCount
//    }
    
    /** Advance the phase
     - parameters:
     - inc: Double increment step used for animation */
    
    func timeWaveStep(timer: Double) {
        time += timer
    }
    
}

//
//  WaveStorage.swift
//  Waves
//
//  Created by Artem Karmaz on 3/14/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//


import Foundation
import UIKit

//class WaveStorage {
//    
//    // MARK: - Properties
//    
//    /// This is a singleton and this contains the only instance!
//    static let storage = WaveStorage()
//    
//    /// An array of sine
//    var array = [Wave]()
//    
//
//    
//    /// Returns the number of sine waves stored
//    var count: Int {
//        get {
//            return array.count
//        }
//    }
//    
//    
//    // MARK: - Init
//    
////    init() {
////        // Add three default Sine waves
////
////        //        add(frequency: 1, amplitude: 20, color: UIColor.red)
////        //        add(frequency: 2, amplitude: 30, color: UIColor.orange)
////        add(frequency: 24, amplitude: 84, color: UIColor.green)
////        add(frequency: 1, amplitude: 40, color: UIColor.blue)
////        add(frequency: 3, amplitude: 140, color: UIColor.red)
////
////    }
//    
//    
//    // MARK: - Utility Methods
//    
//    
//    /** Add a new Sine to the store.
//     - parameters:
//     - frequency: Double the frequency of the new Sine
//     - amplitude: Double the amplitude of the new Sine
//     - color: UIColor the color used to draw this Sine
//     */
//    
//    func add(frequency: Double, amplitude: Double, color: UIColor) {
//        array.append(Wave(frequency: frequency, amplitude: amplitude, color: color))
//    }
//    
//    /** Removes the Sine at index.
//     
//     - parameters:
//     - index: Int the index of the sine to remove
//     
//     */
//    
//    //    func removeAtIndex(index: Int) {
//    //        let sine = array.removeAtIndex(index)
//    //        sine.shapeLayer.removeFromSuperlayer()
//    //    }
//    
//    
//    /** Removes sine by instance
//     - parameters:
//     - sine: Sine the sine to remove
//     */
//    
//    //    func removeSine(sine: Wave) {
//    //        print("removing Sine with id: \(sine.id)")
//    //        for i in 0 ..< array.count {
//    //            if sine.id == array[i].id {
//    //                //                array.removeAtIndex(index: i)
//    //                return
//    //            }
//    //        }
//    //    }
//    
//    /** Get the Sine at index
//     - parameters:
//     - index: Int the index of the Sine to return
//     
//     - returns: Sine
//     */
//    
//    func getAtIndex(index: Int) -> Wave {
//        // TODO: Iterator
//        return array[index]
//    }
//    
//    
//}

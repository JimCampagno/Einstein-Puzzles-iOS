//
//  EinsteinPuzzle.swift
//  EinsteinPuzzles
//
//  Created by Jim Campagno on 10/29/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


typealias Counter = Int

// MARK: - Conversion Methods
extension Double {
    
    var hexadecimal: String {
        return createHex()
    }
    
    private func createHex() -> String {
        var remainder = 0.0
        var result = self
        var finalString: String = ""
        let hexTable = generateHexTable()
        
        while result != 0 {
            remainder = result.truncatingRemainder(dividingBy: 16.0)
            let string = hexTable[remainder]!
            finalString = string + finalString
            result = Double(Int(result / 16))
        }
        
        let prefix = "0x"
        return prefix + finalString
    }
    
    private func generateHexTable() -> [Double : String] {
        return [
            0 : "0",
            1 : "1",
            2 : "2",
            3 : "3",
            4 : "4",
            5 : "5",
            6 : "6",
            7 : "7",
            8 : "8",
            9 : "9",
            10 : "A",
            11 : "B",
            12 : "C",
            13 : "D",
            14 : "E",
            15 : "F"
        ]
    }

}

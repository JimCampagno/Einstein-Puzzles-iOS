//
//  ViewController.swift
//  EinsteinPuzzles
//
//  Created by Jim Campagno on 10/29/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let decimals: [Double] = [86, 105, 115, 105, 116, 32, 116, 104, 105, 115, 32, 85, 82, 76, 32, 116, 111, 32, 102, 105, 110, 100, 32, 121, 111, 117, 114, 32, 112, 114, 105, 122, 101, 46]
        
        let word = decimals.map { $0.hexadecimal }.map { convert(hex: $0) }.joined()
        
        print(word)
    }
    
    func convert(hex: String) -> String {
        
        let hexWithNoPrefix = String(hex.characters.dropFirst(2))
        
        // Convert hex string to numeric value first:
        if let charCode = UInt32(hexWithNoPrefix, radix: 16), let unicode = UnicodeScalar(charCode) {
            // Create string from Unicode code point:
            let str = String(unicode)
            return str
        } else {
            return "NO GOOD"
        }

    }
    
}

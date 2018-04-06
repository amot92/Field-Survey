//
//  classification.swift
//  Field Survey
//
//  Created by Adam Oakes on 4/6/18.
//  Copyright © 2018 Adam Oakes. All rights reserved.
//

import UIKit

enum Classification : String {
    case mammal
    case reptile;
    case amphibian;
    case bird;
    case fish;
    case insect;
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}

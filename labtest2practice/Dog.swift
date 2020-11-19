//
//  Dog.swift
//  labtest2practice
//
//  Created by Maham Shamail on 05/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation
class Dog : Pet{
    var breed: String
    init(name:String, height:Float, weight:Float, breed:String) {
        self.breed = breed //must initialise variables from sub class before super
        super.init(name: name, height: height, weight: weight)
        
    }
}

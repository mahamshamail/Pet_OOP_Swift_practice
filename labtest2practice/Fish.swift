//
//  Fish.swift
//  labtest2practice
//
//  Created by Maham Shamail on 05/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation
class Fish : Pet, Edible{
    var length: Float
    init(name: String, height: Float, weight: Float, length: Float) { 
        self.length = length //must initialise variables from sub class before super
        super.init(name: name, height: height, weight: weight)
        
    }
    //overriding function: must use keyword
    //same number of args/params
    //same return type
    //same name
    override func move() {
        print("swims")
    }
    func makeFood(){
        print("Made Food from Pet: Fried Fish")
    }
}

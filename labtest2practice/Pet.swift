//
//  Pet.swift
//  labtest2practice
//
//  Created by Maham Shamail on 05/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation
class Pet{
    var name:String
    var height:Float
    var weight:Float
    init(name:String,height:Float, weight:Float) {
        self.name = name
        self.height = height
        self.weight = weight
    }
    func move(){
        print("Runs")
    }
}

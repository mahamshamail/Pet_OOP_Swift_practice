//
//  Chicken.swift
//  labtest2practice
//
//  Created by Maham Shamail on 05/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

class Chicken : Pet, Edible{
    var nocturnal: Bool
    init(name: String, height: Float, weight: Float, nocturnal: Bool) {
        self.nocturnal = nocturnal //must initialise variables from sub class before super
        super.init(name: name, height: height, weight: weight)
        
    }
    override func move() {
        print("walks")
    }
    func makeFood(){
        print("Made Food from Pet: Fried Chicken")
    }
}

//
//  main.swift
//  labtest2practice
//
//  Created by Maham Shamail on 05/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

//let something_1, something_2 : String
//
////function overloading
//func sum() {
//    let a:Int = 5 //explicit
//    let b = 6  //implicit
//    print("Sum of the numbers is: \(a+b)")
//}
//
//func sum(a:Int, b:Int) {
//    print("Sum of the numbers is: \(a+b)")
//}
// 
//// sum(5, 6) // wrong
//sum(a:10,b:15)  // correct
//
//
//func sum1() -> Int {
//    let a:Int = 70
//    let b = 80
//    return a+b
//}
//
//let c = sum1();
//print("sum1() returned a value of: \(c)")

//
//func sum1(a:Int?, b:Int?) -> Int? {
//    return a! + b!
//}
//let d = sum1(a:4, b:101);
//print("sum1() returns a value of: \(d)")
//
//func sum1(aa:Int, bb:Int) -> (sum: Int, name: String) {
//    return (sum: aa + bb, name: "sum")
//}
//let e = sum1(aa:4, bb:101);
//print("sum1() returns a value of: \(e)")
//
//func sum1(c:Int = 3, d:Int = 22222) -> (sum: Int, name: String) {
//    return (sum: c + d, name: "sum")
//}
//let f = sum1();
//print("sum1() returns a value of: \(f)")

//Create two variables called hp and maxHP
//Write an if-else statement to handle if hp drops below maxHP
//Add an else-if statement to handle if hp is less than or equal to 50
//Add a fall-through case to account for all other possible outcomes
//
//var hp: Int = 44
//var maxHP: Int = 99
//// If statement (<, >, <=, >=, !=, ==)
//if(hp < maxHP) {
//    hp = maxHP
//}else if(hp <= 50){
//    print("Hp is equals or greater than max hp")
//}
//else{
//    print("Hp is equals or greater than max hp")
//}

let dog = Dog(name: "tom", height: 3.4, weight: 3.4, breed:"golden retreiver")
//print(dog.name)
//dog.move()

let fish = Fish(name: "nemo", height: 1.3, weight: 2, length: 44)
//print(fish.name)
//fish.move()

let chick = Chicken(name: "marcus", height: 2, weight: 6, nocturnal: true)
//chick.move()
var cat:Pet = Cat(name: "Tom", height: 10, weight: 33, type: "Tabby")

print("---------------------")
print("polymorphism example:\n")
var pets : [Pet] = [dog, fish, chick, cat]
for pet in pets{
    //pet.move() //we only see the properties and methods of the parent class
    if let dog = pet as? Dog{
        //dog variable can access all the properties and functions of the subclass
        print("Pet is: Dog\nPet name is: \(dog.name)\nPet Breed:\(dog.breed)\nPet moves by:")
        dog.move()
    }
    else if let cat = pet as? Cat{
           //dog variable can access all the properties and functions of the subclass
        print("Pet is: Cat\nPet name is: \(cat.name)\nPet Type:\(cat.type)\nPet moves by:")
        cat.move()
    }
    else if let chicken = pet as? Chicken{
           //dog variable can access all the properties and functions of the subclass
        print("Pet is: Chicken\nPet name is: \(chicken.name)\nPet Nocturnal : \(chicken.nocturnal)\nPet moves by:")
        chicken.move()
        chicken.makeFood()
    }
    else if let fish = pet as? Fish{
           //dog variable can access all the properties and functions of the subclass
        print("Pet is: Fish\nPet name is: \(fish.name)\nPet Lenght:\(fish.length)\nPet moves by:")
        fish.move()
        fish.makeFood()
    }else{
        print("Error, no pets in pets list")
    }
    print("\n\n")
}


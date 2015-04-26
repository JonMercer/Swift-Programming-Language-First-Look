// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//  ARRAYS _+_+_+_+_+

//We create arrays of specific types

//var is dynamic array
//let is imutable immutable array


let daysInMonths = [31,30,29]

var flavours : [String]
flavours = ["Vanilla", "Strawberry"]

flavours[0] = "Foo"

flavours.append("Bar") //add to the end
flavours += ["BarAgain"] //add to the end

flavours.insert("Baz",atIndex:0)
flavours.removeLast()
flavours.removeAtIndex(2)

flavours.count //check size

//Itterate through array

for flavour in flavours {
    println(flavour)
}




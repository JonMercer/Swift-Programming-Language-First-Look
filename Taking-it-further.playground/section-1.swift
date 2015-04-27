// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//  STRUCTUTRES _+_+_+_+
//structures and classes are very close but not identical
//int bool string dictinlary are strutures

//struct value type
//when assiged to a variable, value is copied. aga pass by value

//class reference type
//when assigned to variable original object is passed. Changing the object somewhere else, changes this object too


//Pass by value example =====

func changeValue (var number : Int ) -> Int {
    number += 1000
    return number
}

var myNumber = 99

changeValue(myNumber)

myNumber //Notice how myNumber is still 99. a copy was passed on the previous line



//Pass by Reference example ====

class SimpleClass { //Chancing "class" to struct, gives us a struct
    var value : Int = 99
}

func changeObject(var object : SimpleClass) -> Int {
    object.value += 10000
    return object.value
}

var myObject = SimpleClass()

changeObject(myObject)

myObject.value


//How to create struct. Just like class but use "struct". What's the difference?
    // + structs hav a specal initializer that it creates in the background which allows you to define the properties (Called member-wise initializer
    // – cannot inherit
    // – cannot make deinitializers






//  OPERATORS _+_+_+_+_+_

import UIKit

var a = 5
var b = 50
var c = 11.38
var highScore = 9000

var result = a + b
result = b - 20
var x = c * 66
x = c / 1.1

highScore += 50

highScore++
highScore--

++highScore
--highScore


//Overflow: swift will not allow overflow unless you do "&+ &- &* &/ &%"



//  COMPARISON_+_+_+_+_+_+

//a > 50 && b <= 60 || c == b



//how to check if objects are identical (only for object)
// ==== checks if there are two references to the same object

var dateA = NSDateComponents()
dateA.year = 2000
dateA.month = 01
dateA.day = 01

var dateB = NSDateComponents()
dateB.year = 2000
dateB.month = 01
dateB.day = 01


//check Equality: ==
if dateA == dateB {
    println("Yes, A and B are equal")
}

// cehck Identity
if dateA === dateB {
    println("Identitcal")
} else {
    println("May be equal but not identical")
}


var dateC = dateA //Objects are refference type. Not a new copy was created

if dateA === dateC {
    println("Yes Both identical")
}



//  ADVANCED OPERATORS _+_+_+_+_+_

//Range operator
    // 0...100 vs 0..<100

//Nil Coalescing operator

// optionalValue ?? defaultValue

var personalSite : String?
let defaultSite = "http://google.com"

var website : String

if personalSite != nil{
     website = personalSite!
} else {
    website = defaultSite
}

//alternatively
var website2 = personalSite ?? defaultSite

// Remainder Operator %

var totalUnits = 1242436
var unitsPerBox = 24

var leftover = totalUnits % unitsPerBox








//  IMPORT _+_+_+_+_+_+_
//swift is small. does not know a lot of things like dates and video encoding. You must leverage libraries and frameworks

//cocoa container to three things, AppKit being one of the most useful ones

//FOundation Framework: Not needed for any UI. Things like dates, multithreading and such. Indluded by defualt









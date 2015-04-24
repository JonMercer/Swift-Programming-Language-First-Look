// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var highScore = 100

highScore = highScore + 50


for i in 0..<100 {
    highScore = highScore + i
}

highScore

//  VARIABLES



/*
all variables in swift are declared with var
like high score
swift is a type-save language. Using type inference

"var foo" will not compile, but this will
*/

var myVariable : Int

//Fload, Double, Bool, String, Character, Arrays, Dictionaries

//example

var myVariableAgain : Int = 1000



//  CONSTANTS 

let daysInWeek : Float = 7 //constants

//var mutable
//let immutable
//can use let for everythig

//_+_+_+_+_+_+_+_+_
//  PRINTING
println("Foo")

var dayOfWeek = "Tuesday"

var num1 = 2

println("totay is \(dayOfWeek) and 2 plus 2 is \( num1 * num1 )")

//casting

var quantity = 17
var price = 3.55

println("The amount is \(Double(quantity) * price)")

//_+_+_+_+_++
//  If Statements


var myVar = 20

if myVar > 9000 {
    //something
} else {
    //something else
}
//ifs require curly braces

//conditions must eveluate as boolean, not just x = 0 .... if x { ....} 


//if a && b



//  SWITCH _+_+_+_+_+_+

let speed = 2

switch speed {
case 1:
    var one = 1
case 2:
    var two = 2
case 5:
    break
case 5...50:
    println("This is a closed range")
default:
    var rest = "rest"
}

//there is no fallthrough from one case to another
//stops at first case
//break does nothing


//  LOOPS _+_+_+_+_+_+_+_+_

for var i = 0; i < 100; i++ {
    //something
}

//for-in loop
for eachItem in 1...100 {
    println(eachItem)
    
}


//range:     0...100, 0..<someArray.length


var name = "Billy"

for eachChar in name {
    println(eachChar)
}


//while

var someBoolean = true

while someBoolean {
    //do something
}

do {
    //do this thing first then check the condition
} while someBoolean

//  FUNCTIONS _+_+_+_+__+


func myFunction() {
    println("Some function")
}

func anotherFunction(name : String) {
    println("Hello, \(name)")
}

anotherFunction("Sam")

//NOTE: input parameters are constants unless


func immutableParam(var age : Int) {
    age = age + 1
}

//returning something

func number() -> Int {
    return 5
}

//NEW!
//default parameters
func defaultFunction(name : String = "James") {
    println("Hello, \(name)")
}


defaultFunction() //OK
//defaultFunction("Hoola") //Not Okay
defaultFunction(name: "Samantha")



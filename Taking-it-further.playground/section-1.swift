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


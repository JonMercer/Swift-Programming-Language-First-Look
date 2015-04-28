// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//  TYPE CHECKING AND CASTING _+_+_+_+_+_


//what type will the following array be?

let myButton = UIButton()
let mySlider = UISlider()
let myTextField = UITextField()
let myDatePicker = UIDatePicker()

let controls = [myButton, mySlider, myTextField, myDatePicker]

//the type of "controls" is the super class of all the objects within it which is UIControl

for item in controls {
    //cehcking for type
    if item is UIDatePicker { //is checks the type
        //donwcasting
        let picker = item as UIDatePicker // as is used to donwcast
        picker.datePickerMode = UIDatePickerMode.CountDownTimer
    }
    
    //Downcast as opitonal (the long way)
    let picker = item as? UIDatePicker
    
    if picker != nil {
        picker!.datePickerMode = UIDatePickerMode.CountDownTimer
    }
    
    
    //Downcast as optional (short way)
    
    if let picker = item as? UIDatePicker {
        picker.datePickerMode  = UIDatePickerMode.CountDownTimer
    }

}



//  AnyObject and Any _+_+_+

//dealing with non-specific data

//anyObject has to be any
//any can be tuples of object

//swift to O-C : using objective C NSarray can hold any object in any position which you be a type of anyObject in Swift

import UIKit

var someObject : AnyObject

someObject = "TLIhfneilrge rg t t t t t t" //can't put tuple or closure in this case. Can do string and its because we're using the UIKit string and int not swift's string and int

if someObject is String {
    let wordsArray = someObject.componentsSeparatedByString(" ")
}



//  PROTOCOLS_+_+_+_+_+_

//Protocol standadize behavour in classes without worrying about inheritance or formal relationships

protocol Cleaner {
    func cleanFloors()
    func vacuum()
    func emptyTrash() -> Bool
    
    //properties
    var brokenBulbs : Bool {get set}
}


protocol ExampleProtocol {
    //method signature
    func simpleMethod() -> Bool
    
    //must always be a var
    var simpleProperty : Int {get}
}

protocol ExampleProtocol2 {
    //method signature
    func simpleMethod2() -> Bool
    
    //must always be a var
    var simpleProperty2 : Int {get}
}

class SuperClass {
    //does nothing right now
}

class MyClass : SuperClass, ExampleProtocol, ExampleProtocol2 {
    //can do anything else here along with promise to protocol
    
    func simpleMethod() -> Bool {
        return true
    }
    
    func simpleMethod2() -> Bool {
        return false
    }
    
    var simpleProperty : Int {
        return 55
    }
    
    var simpleProperty2 : Int {
        return 77
    }
    
    
}




//  ADDING FUNCTIONALOTY AND EXTENTIONS_+_+_+_+_+_


//does not need source code
//can be added to classes, structs, and enums

extension String {
    func reverseWords() -> String {
        let wordsArray = self.componentsSeparatedByString(" ")
        let reversedArray = wordsArray.reverse()
        var newString = ""
        for eachWord in reversedArray {
            newString = "\(newString) \(eachWord) "
        }
        return newString
    }
}

var message = "Reverse words in this string"
message.reverseWords()

//no need to call super, or override




//  GENERICS_+_+_+__+_

//variables of specific type is a good thing

//anyObject gives flexibility and dynamic

//generics give both


class SimpleClass {
    var singleProperty : String = "A String"
}

let myInts = [123,12,4123,423,523,534,534,563]
let myStrings = ["sdfdf","sdfdsf","sdfsdfsd"]
let myObjects = [SimpleClass(), SimpleClass(), SimpleClass()]

let someString = myStrings[0]


//The swift array iterator does not care for the type inside the array

func displayArray<T>(theArray : [T]) -> T {
    for eachItem in theArray {
        print(eachItem)
        print(" : ")
    }
    let finalElement : T = theArray[theArray.count-1]
    return finalElement
}
displayArray(myObjects)

var finalString = displayArray(myStrings)












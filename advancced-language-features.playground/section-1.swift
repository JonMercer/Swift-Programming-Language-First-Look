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








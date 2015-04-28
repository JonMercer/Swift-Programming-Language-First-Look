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





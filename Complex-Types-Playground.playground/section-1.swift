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




// Dictionary _+_+_+_+
//aka Map, Hashtable

var states = [ "Az":"Arizona","CA": "California"]

//declaring dictionary

var products : [Int:String]

println(states["AZ"]) //Optional means key may exist or not

//addint to dictionary
states["FL"] = "Florida" //Will change existing or add new

states .updateValue("Nevada", forKey:"NV") //If key exists, update the value if not add this key value pair
//will return nil if key didnt exist, will return the value then update it if jey did exists. ??


//Remove
states["DE"] = nil
states.removeValueForKey("CA")


for (k, v) in states {
    println(k)
    println(v)
}




// Tuples _+_+_+_+_+_+_+_

//collection of elements

var hello = "Hello"
(95, "Foo", true, 5.5454545, hello)

func getSongAndLen() -> (String, Int) {
    return("Song",120)
}

let result = getSongAndLen()

println(result.0); println(result.1)

//or a friendly name

func getSongAndLen2() -> (song:String, len:Int) {
    return("Song",120)
}

let result2 = getSongAndLen2()

println(result2.song); println(result2.len)

//decomposing tuple right away
let (name,length) = getSongAndLen()

//Not meant to replace formal date structures.





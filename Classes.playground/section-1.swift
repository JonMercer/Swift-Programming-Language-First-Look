

class Player {
    
    //Instance level properties
    var name : String = "John"
    var score : Int = 0
    
    
    func description() -> String {
        return("Player \(name) and \(score)")
    }
    
    
}


var jake : Player = Player()

jake.name = "Jake"

jake.score = 1000

println(jake.description())



//  Initializers _+_+_+_+_

class Player2 {

    var name : String = "John"
    var score : Int = 0
    
    
    func description() -> String {
        return("Player \(name) and \(score)")
    }
    
    init() {
        name = "Joe"
        score = 0
    }
    
    init(name : String, score : Int) {
        self.name = name
        self.score = 0
    }
    
    //called when object reaches end of lifetime
    deinit{
        // close connection to database
        // does not have to deinit all the time
        
        //swift does auto grabage collection
    }
    
    
    
}


var somePlayer : Player2 = Player2(name: "Alice", score:6)

println(somePlayer.description())


//  INHERITACE _+_+_+_+_+


class GoodPlayer : Player {
    var memberLevel : String
    
    override init() {
        memberLevel = "Gold"
        super.init() //must call the super init, but only in inits
    }
    
    func calculateBonus() {
        self.score += 100
        println("Player score is \(score)")
    }
    
    override func description() -> String {
        let originalMessage = super.description()
        return("\(originalMessage) is a \(memberLevel)")
    }
    
    
    
}

var newPlayer = GoodPlayer()
newPlayer.calculateBonus()
newPlayer.description()

//adding a final to class prevents overriding



//  COMPUTED PROPERTIES _+_+_+_+_


import Foundation
class Person {
    //STORED property
    var firstName : String
    var lastName : String
    
    //COMPUTED property (usually only have a getter)
    var fullName :String {
        get {
            //return computed property
            return firstName + " " + lastName
        }
        set {
            //split newValue //NOTE: newValue is a default name
            var nameArray = newValue.componentsSeparatedByString(" ")
            firstName = nameArray[0]
            lastName = nameArray[1]
        }
    }
    
    init(first: String, last: String) {
        self.firstName = first
        self.lastName = last
    }
}

var examplePerson = Person(first: "Jony", last:"Derp")
println(examplePerson.fullName)
examplePerson.fullName = "Jone Dop"



//  TYPE PROPERTIES _+_+_+_+_+_
//a class-wide property

class BankAccount {
    
    let accountNumber : Int
    let routingCode = 1243567
    var balance : Double
    class var interestRate : Float {
        return 2.0
    }
    
    init(num : Int, initialBalance : Double) {
        self.accountNumber = num
        self.balance = initialBalance
    }
    
    func deposit(amount : Double) {
        balance += amount
    }
    
    func widthraw(amount : Double) -> Bool {
        if balance > amount {
            balance -= amount
            return true
        } else {
            println("Insuficient Funds")
            return false
        }
    }
    
    class func example() {
        //CANNOT access instance data
        println("Foo \(interestRate)")
    }
}

var firstAccount = BankAccount(num: 213456, initialBalance: 123456.8)
var secondAccount = BankAccount(num: 484884, initialBalance: 26742387.3895)

//Will always be avaialble even without hte instances of the classs
BankAccount.interestRate

BankAccount.example()



//  LAZY PROPERTIES _+_+_+_+_+_

import UIKit

//Some function that need to contact the interenet
func getDailyBonus() -> Int {
    return random()
}

class PlayerAgain {
    //properties
    var name : String = "John Doe"
    var score = 0
    lazy var bonus = getDailyBonus() //call to function lazily
    //cannot do a lazy let
    
    func description() -> String {
        return ("Foo \(name) bar \(score)")
    }
}

var newPlayerAgain = PlayerAgain()
println(newPlayerAgain.bonus)
















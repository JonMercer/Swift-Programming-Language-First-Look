

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















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









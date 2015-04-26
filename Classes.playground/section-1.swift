

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



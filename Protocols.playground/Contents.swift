//: Playground - noun: a place where people can play
//https://www.raywenderlich.com/109156/introducing-protocol-oriented-programming-in-swift-2
import UIKit

var str = "Hello, playground"

protocol Bird {
  var name: String { get }
  var canFly: Bool { get }
}

extension Bird where Self: Flyable {
  //Flyable birds can fly
  var canFly: Bool {return true}
}

protocol Flyable {
  var airspeedvelocity: Double { get }
}


struct FlappyBird: Bird, Flyable {
  let name: String
  let flappyAmplitude: Double
  let flappyFrequency: Double
  
  var airspeedvelocity: Double {
    return 3 * flappyAmplitude * flappyFrequency
  }
}

struct Penguin: Bird {
  let name: String
  let canFly = false
}

struct SwiftBird: Bird, Flyable {
  var name: String {return "Swift \(version)" }
  let version: Double
  
  var airspeedvelocity: Double { return 2000.0 }
}

enum UnladenSwallow: Bird, Flyable {
  case African
  case European
  case Unknown
  
  var name: String {
    switch self {
    case .African:
      return "African"
    case .European:
      return "European"
    case .Unknown:
      return "What do you mean?"
    }
  }
  
  var airspeedvelocity: Double {
    switch self {
    case .African:
      return 10.0
    case .European:
      return 9.9
    case .Unknown:
      fatalError("Bridge of death")
    }
  }
}

extension CollectionType {
  func skip(skip: Int) -> [Generator.Element] {
    guard skip != 0 else { return []}
    
    var index = self.startIndex
    var result: [Generator.Element] = []
    var i = 0
    repeat {
      if i % skip == 0 {
        result.append(self[index])
      }
      index = index.successor()
      i++
    } while (index != self.endIndex)
    
    return result
  }
}

let bunchaBirds: [Bird] =
[UnladenSwallow.African,
  UnladenSwallow.European,
  UnladenSwallow.Unknown,
  Penguin(name: "King Penguin"),
  SwiftBird(version: 2.0),
  FlappyBird(name: "Felipe", flappyAmplitude: 3.0, flappyFrequency: 20.0)]

bunchaBirds.skip(3)



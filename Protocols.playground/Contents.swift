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


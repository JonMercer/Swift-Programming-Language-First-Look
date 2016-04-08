import Foundation


/* Why Enums
 Enumerations are great for picking items from a list of well-known things, such as days of the week, faces of a coin or states in a state machine. 
 */
enum CSSColor {
    case Named(ColorName)
    case RGB(UInt8, UInt8, UInt8)
}

extension CSSColor {
    //pushes colorname namespace into CSSColor
    enum ColorName : String {
        case Black, Silver, Gray, White, Maroon, Red, Purple, Fuchsia, Green, Lime, Olive, Yellow, Navy, Blue, Teal, Aqua
    }
}

extension CSSColor : CustomStringConvertible {
    var description: String {
        switch self {
        case .Named(let colorName):
            return colorName.rawValue
        case .RGB(let red, let green, let blue):
            return String(format: "#%02X%02X%02X", red,green,blue)
        }
    }
}

let color1 = CSSColor.Named(.Red)
let color2 = CSSColor.RGB(0xAA, 0xAA, 0xAA)
print("color1 = \(color1), color2 = \(color2)") // prints color1 = Red, color2 = #AAAAAA


//custom initializer method for gray
extension CSSColor {
    init(gray: UInt8) {
        self = .RGB(gray, gray, gray)
    }
}

let color3 = CSSColor(gray: 0xaa)
print(color3)

enum Math {
    static let pi = 3.1415926535897932384626433832795028841971694
}

import Foundation

enum ColorName : String {
    case Black, Silver, Gray, White, Maroon, Red, Purple, Fuchsia, Green, Lime, Olive, Yellow, Navy, Blue, Teal, Aqua
}

enum CSSColor {
    case Named(ColorName)
    case RGB(UInt8, UInt8, UInt8)
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

extension CSSColor {
    init(gray: UInt8) {
        self = .RGB(gray, gray, gray)
    }
}

let color3 = CSSColor(gray: 0xaa)
print(color3)

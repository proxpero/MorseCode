public enum Point: String, Hashable, CustomStringConvertible {
    case dot = "."
    case dash = "-"

    public var description: String {
        self.rawValue
    }
}

public enum Char: Character, CaseIterable, CustomStringConvertible {
    case a = "a"
    case b = "b"
    case c = "c"
    case d = "d"
    case e = "e"
    case f = "f"
    case g = "g"
    case h = "h"
    case i = "i"
    case j = "j"
    case k = "k"
    case l = "l"
    case m = "m"
    case n = "n"
    case o = "o"
    case p = "p"
    case q = "q"
    case r = "r"
    case s = "s"
    case t = "t"
    case u = "u"
    case v = "v"
    case w = "w"
    case x = "x"
    case y = "y"
    case z = "z"
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case period = "."
    case comma = ","
    case colon = ":"
    case questionMark = "?"
    case singleQuote = "'"
    case dash = "-"
    case slash = "/"
    case openParen = "("
    case closeParen = ")"
    case doubleQuote = "\""
    case atSign = "@"
    case equalSign = "="
    case exclamationMark = "!"

    public var points: [Point] {
        switch self {
        case .a: return [.dot, .dash]
        case .b: return [.dash, .dot, .dot, .dot]
        case .c: return [.dash, .dot, .dash, .dot]
        case .d: return [.dash, .dot, .dot]
        case .e: return [.dot]
        case .f: return [.dot, .dot, .dash, .dot]
        case .g: return [.dash, .dash, .dot]
        case .h: return [.dot, .dot, .dot, .dot]
        case .i: return [.dot, .dot]
        case .j: return [.dot, .dash, .dash, .dash]
        case .k: return [.dash, .dot, .dash]
        case .l: return [.dot, .dash, .dot, .dot]
        case .m: return [.dash, .dash]
        case .n: return [.dash, .dot]
        case .o: return [.dash, .dash, .dash]
        case .p: return [.dot, .dash, .dash, .dot]
        case .q: return [.dash, .dash, .dot, .dash]
        case .r: return [.dot, .dash, .dot]
        case .s: return [.dot, .dot, .dot]
        case .t: return [.dash]
        case .u: return [.dot, .dot, .dash]
        case .v: return [.dot, .dot, .dot, .dash]
        case .w: return [.dot, .dash, .dash]
        case .x: return [.dash, .dot, .dot, .dash]
        case .y: return [.dash, .dot, .dash, .dash]
        case .z: return [.dash, .dash, .dot, .dot]
        case .zero: return [.dash, .dash, .dash, .dash, .dash]
        case .one: return [.dot, .dash, .dash, .dash, .dash]
        case .two: return [.dot, .dot, .dash, .dash, .dash]
        case .three: return [.dot, .dot, .dot, .dash, .dash]
        case .four: return [.dot, .dot, .dot, .dot, .dash]
        case .five: return [.dot, .dot, .dot, .dot, .dot]
        case .six: return [.dash, .dot, .dot, .dot, .dot]
        case .seven: return [.dash, .dash, .dot, .dot, .dot]
        case .eight: return [.dash, .dash, .dash, .dot, .dot]
        case .nine: return [.dash, .dash, .dash, .dash, .dot]
        case .period: return [.dot, .dash, .dot, .dash, .dot, .dash]
        case .comma: return [.dash, .dash, .dot, .dot, .dash, .dash]
        case .colon: return [.dash, .dash, .dash, .dot, .dot, .dot]
        case .questionMark: return [.dot, .dot, .dash, .dash, .dot, .dot]
        case .singleQuote: return [.dot, .dash, .dash, .dash, .dash, .dot]
        case .dash: return [.dash, .dot, .dot, .dot, .dot, .dash]
        case .slash: return [.dash, .dot, .dot, .dash, .dot]
        case .openParen: return [.dash, .dot, .dash, .dash, .dot, .dash]
        case .closeParen: return [.dash, .dot, .dash, .dash, .dot, .dash]
        case .doubleQuote: return [.dash, .dot, .dash, .dash, .dot, .dash]
        case .atSign: return [.dot, .dash, .dot, .dot, .dash, .dot]
        case .equalSign: return [.dot, .dash, .dash, .dot, .dash, .dot]
        case .exclamationMark: return [.dash, .dot, .dot, .dot, .dash]
        }
    }

    public var description: String {
        self.points.map(\.description).joined()
    }
}

extension Char {
    init?(substring: Substring) {
        guard let char = substring.first,
              let value = Char(rawValue: char)
        else { return nil }
        self = value
    }
}

struct Word: CustomStringConvertible {
    let chars: [Char]

    var description: String {
        chars.map(\.description).joined(separator: "   ")
    }
}

extension Word {
    init?(substring: Substring) {
        let chars = substring.compactMap(Char.init(rawValue:))
        self = .init(chars: chars)
    }
}

public func translate(_ input: String) -> String {
    input.lowercased()
        .split(separator: " ")
        .compactMap(Word.init)
        .map(String.init)
        .joined(separator: "       ")
}


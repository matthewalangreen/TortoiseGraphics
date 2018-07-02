import Foundation


// https://material.io/guidelines/style/color.html
public enum Color: String {
    
    case black = "000000"
    case white = "FFFFFF"
    case red = "F44336"
    case pink = "E91E63"
    case purple = "9C27B0"
    case deepPurple = "673AB7"
    case indigo = "3F51B5"
    case blue = "2196F3"
    case lightBlue = "03A9F4"
    case cyan = "00BCD4"
    case teal = "009688"
    case green = "4CAF50"
    case lightGreen = "8BC34A"
    case lime = "CDDC39"
    case yellow = "FFEB3B"
    case amber = "FFC107"
    case orange = "FF9800"
    case deepOrange = "FF5722"
    case brown = "795548"
    case grey = "9E9E9E"
    case blueGrey = "607D8B"
    
    static func randomColor() -> Color {
        let picks = [Color.black, Color.white, Color.red, Color.pink, Color.purple, Color.deepPurple, Color.indigo, Color.blue, Color.lightBlue, Color.cyan, Color.teal, Color.green, Color.lightGreen, Color.lime, Color.yellow, Color.amber, Color.orange, Color.deepOrange, Color.brown, Color.grey, Color.blueGrey]
        let index = Int(arc4random_uniform(UInt32(picks.count)))
        let pick = picks[index]
        //let val = ".\(pick)"
        return pick
    }
    
}

//let choice = Color.randomColor()
//let anotherChoice = Color.randomColor()
























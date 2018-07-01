//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
import Foundation

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 800, height: 800))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { 🐢 in

    🐢.penColor(.blue)
    🐢.home()

    func nGon(sides: Double, sideLength: Double) {
        
        for i in 1...Int(sides) {
            🐢.forward(sideLength)
            🐢.left(360/sides)
        }
    }
    
//    for i in 1...18 {
//        🐢.left(20)
//        nGon(sides: 12, sideLength: 40)
//    }
//
    🐢.penColor(.orange)
    
    for i in 1...24 {
        🐢.left(15)
        nGon(sides: 12, sideLength: 40)
    }
    
    
    
//    🐢.right(90)
//    🐢.penUp()
//    🐢.forward(50)
//    🐢.penDown()
//
//    nGon(sides: 27, sideLength: 37)
    
    
    
    
    
    
    
    
    

//    // make it an adjustable function
//    func adjustableSquare(size: Double) {
//        for i in 1 ... 4 {
//            🐢.left(90)
//            🐢.forward(size)
//        }
//    }
//
//    // let's make something out of those squares
//    for i in 1...90 {
//        adjustableSquare(size: 100)
//        🐢.left(4)
//    }
    

    
  
}

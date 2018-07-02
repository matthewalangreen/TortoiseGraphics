//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
import Foundation

//https://en.wikipedia.org/wiki/Sierpi%C5%84ski_arrowhead_curve

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 800, height: 800))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { 🐢 in

    🐢.penColor(.black)
    🐢.penDown()
    //🐢.forward(100)
    
   
    func arrowhead(order: Int, length: Double) {
        // if order even, draw the curve
        if (order % 2 == 0) {
            curve(order: order, length: length, angle: 60)
        } else { // order is odd
           🐢.left(60)
            curve(order: order, length: length, angle: -60)
        }
    }
    
    func curve(order: Int, length: Double, angle: Double) {
        if (order == 0) {
            🐢.forward(length)
        } else {
            curve(order: order - 1, length: length/2, angle: -1*angle)
            🐢.left(angle)
            curve(order: order - 1, length: length/2, angle: angle)
            🐢.left(angle)
            curve(order: order - 1, length: length/2, angle: -1*angle)
        }
        
    }
    //🐢.left(60)
    for i in 1...10 {
        arrowhead(order: 4, length: 60)
        🐢.left(20)
        //🐢.penColor(Color.randomColor())
    }
    
    
   //arrowhead(order: 3, length: 100)
//    🐢.left(20)
//   // 🐢.penColor(.orange)
//    arrowhead(order: 3, length: 100)
}

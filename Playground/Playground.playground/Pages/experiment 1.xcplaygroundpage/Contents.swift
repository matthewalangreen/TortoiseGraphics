//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

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

    🐢.penColor(.orange)
    
    for i in 1...24 {
        🐢.left(15)
        nGon(sides: 12, sideLength: 45)
    }
    
    🐢.penColor(.blue)
    🐢.left(40)
    🐢.forward(20)

    for j in 1...24 {
        🐢.left(15)
        nGon(sides: 12, sideLength: 40)
    }
    
}

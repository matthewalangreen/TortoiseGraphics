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

    🐢.penColor(.red)
    🐢.penDown()
    

    // draw a square
//    🐢.forward(100)
//    🐢.left(90)
//    🐢.forward(100)
//    🐢.left(90)
//    🐢.forward(100)
//    🐢.left(90)
//    🐢.forward(100)
//    🐢.left(90)
    
    
    // look for repeats...
//    for i in 1 ... 4 {
//        🐢.forward(100)
//        🐢.left(90)
//    }
    
    //make it a function
//    func square() {
//        for i in 1 ... 4 {
//            🐢.left(90)
//            🐢.forward(100)
//        }
//    }
    
    // try it out
    //square()
    
//    // make it an adjustable function
//    func adjustableSquare(size: Double) {
//        for i in 1 ... 4 {
//            🐢.left(90)
//            🐢.forward(size)
//        }
//    }
    
    
    // let's make something out of those squares
//    for i in 1...90 {
//        adjustableSquare(size: 100)
//        🐢.left(4)
//    }
    
    // Instantiate a ImageCanvas
    let canvie = ImageCanvas(size: CGSize(width: 1500, height: 1500))
    
    canvie.drawing { 🐢 in
        
        // make it an adjustable function
        func adjustableSquare(size: Double) {
            for i in 1 ... 4 {
                🐢.left(90)
                🐢.forward(size)
            }
        }
        
        for i in 1...90 {
            adjustableSquare(size: 300)
            🐢.left(4)
        }
    }
    
    let cgImage = canvie.cgImage
    
    let image = canvie.image
    
    //canvie.writePNG(to: URL(fileURLWithPath: "./image.png"))
    
    let desktop = FileManager.default.homeDirectoryForCurrentUser.appendingPathComponent("Desktop")
    canvie.writePNG(to: desktop.appendingPathComponent("image.png"))
    
  
}

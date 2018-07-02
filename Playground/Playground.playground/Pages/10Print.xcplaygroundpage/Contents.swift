//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
import Foundation

let width: Double = 400
let height: Double = 400

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: width, height: height))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { 🐢 in

    🐢.penColor(.lightBlue)
    var topLineHeight: Double = 0
    var onTopLine: Bool = false
    var xPos: Double = 0
   
    func topLeftCanvas() {
        🐢.penUp()
        🐢.forward(height/2)
        🐢.left(90)
        🐢.forward(width/2)
        🐢.left(180)
        onTopLine = true
    }
    
    func downLine(length: Double) {
        🐢.penDown()
        🐢.right(45)
        🐢.forward(length)
        🐢.left(45)
        🐢.penUp()
        onTopLine = false
        updateXPos(length: length)
    }
    
    func upLine(length: Double) {
        🐢.penDown()
        🐢.left(45)
        🐢.forward(length)
        🐢.right(45)
        🐢.penUp()
        onTopLine = true
        updateXPos(length: length)
    }
    
    func moveToTopCorner(length: Double) {
        🐢.left(90)
        🐢.forward(length/sqrt(2))
        🐢.right(90)
        onTopLine = true
    }
    
    func moveToBottomCorner(length: Double) {
        🐢.right(90)
        🐢.forward(length/sqrt(2))
        🐢.left(90)
        onTopLine = false
    }
    
    func chooseLine(length: Double){
        var p = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        print(p)
        if  p > 0.5 {
            // do upline
            if onTopLine {
                moveToBottomCorner(length: length)
                upLine(length: length)
            } else {
                upLine(length: length)
            }
        } else { // do downline
            if onTopLine {
                downLine(length: length)
            } else {
                moveToTopCorner(length: length)
                downLine(length: length)
            }
        }
    }
    
    func updateXPos(length: Double) {
        xPos += length/sqrt(2)
        if xPos >= width {
            xPos = 0
            topLineHeight += length/sqrt(2)
            🐢.goto(-width/2, width/2-topLineHeight)
            onTopLine = true
        }
    }
    
    topLeftCanvas()
    🐢.xcor
    🐢.ycor
    onTopLine
    topLineHeight
    while topLineHeight <= height {
        chooseLine(length: 100/sqrt(2))
    }
//    for i in 1...100 {
//       chooseLine(length: 25/sqrt(2))
//    }
    
  
 
    
    
    
    
//    downLine(length: 100)
//    upLine(length: 100)
//    moveToBottomCorner(length: 100)
//    upLine(length: 100)
    //moveToTopCorner(length: 100)
    //upLine(length: 100)
    
    // we need a way to keep track of
    // where we are in row, column
    // if 🐢.xpos > width { reset xpos, yPos += length/sqrt(2) }
    // if 🐢.y > height {stop}
    
    // now we just need the turtle
    // to decide after each iteration
    // if its going to draw an upline
    // or downline
    
    // Steps:
    // 1. go to top left
    
    // choose line:
    // if upline {
    //  moveToBottomCorner(length: <#T##Double#>)
    //} else {
    
//}
    
    
    
}

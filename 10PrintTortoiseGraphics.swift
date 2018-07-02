// Uses TortoiseGraphics: https://github.com/temoki/TortoiseGraphics



import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
import Foundation

// Global to keep track of PlaygroundCanvas dimsensions
let width: Double = 400
let height: Double = 400

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: width, height: height))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { 🐢 in
    
    🐢.penColor(.purple)
    
    // set top line value to track position of turtle
    var topLineHeight: Double = 0
    var onTopLine: Bool = false
    var xPos: Double = 0
    
    // setup function to move turtle to top left of screen
    func topLeftCanvas() {
        🐢.penUp()
        🐢.goto(-width/2, height/2)
        🐢.right(90)
        onTopLine = true
    }
    
    // draw line from top left to bottom right
    func downLine(length: Double) {
        // get to correct starting position if needed
        if !onTopLine {
            moveToTopCorner(length: length)
        }
        🐢.penDown()
        🐢.right(45)
        🐢.forward(length)
        🐢.left(45)
        🐢.penUp()
        onTopLine = false
        updateXPos(length: length)
    }
    
    // draw line from bottom left to top right
    func upLine(length: Double) {
        // get to correct starting position if needed
        if onTopLine {
            moveToBottomCorner(length: length)
        }
        🐢.penDown()
        🐢.left(45)
        🐢.forward(length)
        🐢.right(45)
        🐢.penUp()
        onTopLine = true
        updateXPos(length: length)
    }
    
    // helper function -- runs if you are trying to draw a downLine
    // but you aren't in the top left corner
    func moveToTopCorner(length: Double) {
        🐢.left(90)
        🐢.forward(length/sqrt(2))
        🐢.right(90)
        onTopLine = true
    }
    
    // helper function -- runs if you are trying to draw an upLine
    // but you aren't in the bottom left corner
    func moveToBottomCorner(length: Double) {
        🐢.right(90)
        🐢.forward(length/sqrt(2))
        🐢.left(90)
        onTopLine = false
    }
    
    func drawLine(length: Double){
        // get random Double between 0 and 1 for probability
        var p = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        
        // draw upLine()
        if  p > 0.5 { upLine(length: length) }
            
            // draw downLine()
        else { downLine(length: length) }
    }
    
    // This function keeps track of the horizontal position of the turtle.
    // When he gets to the end of a "row" move him down to the start of the
    // next row.
    func updateXPos(length: Double) {
        xPos += length/sqrt(2)
        if xPos >= width {
            xPos = 0
            topLineHeight += length/sqrt(2)
            🐢.goto(-width/2, width/2-topLineHeight)
            onTopLine = true
        }
    }
    
    // move to starting position
    topLeftCanvas()
    
    // 10Print
    while topLineHeight <= height {
        drawLine(length: 100/sqrt(2))
    }
    
    
}

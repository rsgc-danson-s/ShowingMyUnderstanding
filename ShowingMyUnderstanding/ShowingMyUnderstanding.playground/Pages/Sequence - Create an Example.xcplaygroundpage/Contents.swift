/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

 ## Remember
 
 Commit your work as you make progress on this page.

 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// create face
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = Color(hue: 49, saturation: 13, brightness: 60, alpha: 80)
canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 200, width: 75, height: 70)
canvas.fillColor = Color.blue
canvas.drawRectangle(bottomLeftX: 115, bottomLeftY: 240, width: 15, height: 15)
canvas.drawRectangle(bottomLeftX: 145, bottomLeftY: 240, width: 15, height: 15)
canvas.drawRectangle(bottomLeftX: 115, bottomLeftY: 210, width: 45, height: 15)

//create arms
canvas.defaultLineWidth = 25
canvas.lineColor = Color.blue
canvas.drawLine(fromX: 5, fromY: 150, toX: 68, toY: 150)
canvas.drawLine(fromX: 207, fromY: 150, toX: 270, toY: 150)

//create legs
canvas.defaultLineWidth = 35
canvas.lineColor = Color(hue: 49, saturation: 13, brightness: 60, alpha: 80)
canvas.drawLine(fromX: 115, fromY: 5, toX: 115, toY: 83)
canvas.drawLine(fromX: 160, fromY: 5, toX: 160, toY: 83)

//create body
canvas.fillColor = Color(hue: 49, saturation: 13, brightness: 60, alpha: 80)
canvas.drawRectangle(bottomLeftX: 80, bottomLeftY: 100, width: 115, height: 100)
canvas.fillColor = Color.blue
canvas.drawRectangle(bottomLeftX: 105, bottomLeftY: 130, width: 70, height: 40)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// create background
canvas.drawShapesWithFill = true
canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 300, height: 300)
// Generate a random number
var number = random(from: 0, toButNotIncluding: 2)

// when the random number 1 is generated
//below, line 33 is an if statement and a comparison operator
if number == 1 {
    canvas.fillColor = Color.red
    canvas.drawShapesWithFill = true
    for x in stride(from: 25, through: 300, by: 60) {
        for y in stride(from: 25, through: 300, by: 60) {
            canvas.drawEllipse(centreX: y, centreY: x, width: 30, height: 30, borderWidth: 5)
        }
    }
}
// when the random number 0 is generated
// below, line 48 is a variable
if number == 0 {
    canvas.fillColor = Color.blue
    for x in stride(from: 25, through: 300, by: 60) {
        for y in stride(from: 25, through: 300, by: 60) {
            canvas.drawEllipse(centreX: y, centreY: x, width: 30, height: 30, borderWidth: 5)
        }
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

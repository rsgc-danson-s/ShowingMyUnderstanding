/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Generate a random number
// below, line 24 is an example of a assignment statement
var number = random(from: 0, toButNotIncluding: 3)

// when the random number 1 is generated
if number == 1 {
    canvas.drawShapesWithFill = true
    canvas.fillColor = Color.red
    canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 100, width: 100, height: 100)
    
}

// when the random number 0 is generated
if number == 0 {
    canvas.fillColor = Color.blue
    canvas.drawEllipse(centreX: 150, centreY: 150, width: 100, height: 100, borderWidth: 0)
}

// when the random number 2 is generated
if number == 2 {
    print("Seb is awesome")
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

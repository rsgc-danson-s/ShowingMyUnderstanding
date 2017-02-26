/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// make circles without fill
canvas.drawShapesWithFill = false
for x in stride(from: 0, through: 300, by: 30){
    canvas.drawEllipse(centreX: 150, centreY: 150, width: x, height: x, borderWidth: 3)
}
for y in stride(from: 10, through: 300, by: 30){
    canvas.drawEllipse(centreX: 150, centreY: 150, width: y, height: y, borderWidth: 3)
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

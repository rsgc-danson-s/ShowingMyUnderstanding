/*:
 [Previous](@previous) / [Next](@next)

 # Sequence - Practice
 
 When does sequence matter?

 Here is an example of an image that is created and depends on statements being run in a certain order:

 ![overlapping_shapes](overlapping_shapes.png "Overlapping Shapes Logo")

 In this shape, there are lines and circles used.

 Color and alpha (transparency) matter.

 Try reproducing this image for practice.

 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note

 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)


// make blue section
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = Color(hue: 190, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: 75, centreY: 75, width: 75, height: 75)
canvas.drawEllipse(centreX: 75, centreY: 225, width: 75, height: 75)
canvas.defaultLineWidth = 75
canvas.lineColor = Color(hue: 190, saturation: 100, brightness: 100, alpha: 100)
canvas.drawLine(fromX: 75, fromY: 115, toX: 75, toY: 190)
canvas.drawLine(fromX: 90, fromY: 200, toX: 150, toY: 100)

//make red section
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: 225, centreY: 75, width: 75, height: 75)
canvas.drawEllipse(centreX: 225, centreY: 225, width: 75, height: 75)
canvas.defaultLineWidth = 75
canvas.lineColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 100)
canvas.drawLine(fromX: 225, fromY: 115, toX: 225, toY: 190)
canvas.drawLine(fromX: 212, fromY: 200, toX: 163, toY: 100)

//make black section
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 150, centreY: 75, width: 75, height: 75)
canvas.lineColor = Color.black
for x in stride(from: 112, through: 189, by: 1){
    canvas.defaultLineWidth = 1
    canvas.drawLine(fromX: x, fromY: 75, toX: 150, toY: 162)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

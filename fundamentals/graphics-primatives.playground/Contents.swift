//: Playground - noun: a place where people can play

import UIKit
//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles
struct Point {
    var X: Double
    var Y: Double
}
//Create a Line struct that has a "Start" and "End" property both of type Point
struct Line {
    var Start: Point
    var End: Point
    //In the Line struct add a function to return the Length of the created line as a Double.
    func Length() -> Double {
        return sqrt(pow(End.X-Start.X, 2)+pow(End.Y-Start.Y, 2))
    }
}
//Create a Triangle Struct that contains a property called "Points" which is an array of type Point
struct Triangle {
    var Points: [Point]
    //Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.
    func Area() -> Double {
        let A = Points[0]
        let B = Points[1]
        let C = Points[2]
        let area = abs((A.X*(B.Y-C.Y)+B.X*(C.Y-A.Y)+C.X*(A.Y-B.Y))/2)
        return area
    }
}
var pointone = Point(X:0, Y:0)
var pointtwo = Point(X:4, Y:0)
var pointthree = Point(X:0, Y:5)

var line = Line(Start: pointone, End: pointtwo)

var triangle = Triangle(Points: [pointone, pointtwo, pointthree])

print(triangle.Area())

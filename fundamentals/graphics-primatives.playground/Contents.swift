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
    var Points: [Point] = [Point]()
    //Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.
    func Area() -> Double {
        let
    }
}

var oneline = Line(Start: Point(X:0, Y:0), End: Point(X:4, Y:0))

var onetriangle(Points: [Point(X:0, Y:0),Point(X:4, Y:0), Point(X:0, Y:5)])
print(ontriangle.Area())

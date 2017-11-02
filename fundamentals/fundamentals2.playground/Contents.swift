//: Playground - noun: a place where people can play

import UIKit
// create a loop (either for or while) that prints all of the values from 1-255
for i in 1...255 {
    print(i)
}

// create a program that prints all of the values from 1-100 that are divisible by 3 or 5 but not both
for i in 1...100 {
    if((i % 3 == 0 || i % 5 == 0) && i % 15 != 0) {
        print(i)
    }
}
// modify that program to print "Fizz" when the number is divisible by 3 and "Buzz" when the number is divisible by 5 as well as "FizzBuzz" when the number is divisible by both!
for i in 1...100 {
    if(i % 3 == 0 && i % 5 == 0) {
        print("FizzBuzz")
    } else if(i % 3 == 0) {
        print("Fizz")
    } else if(i % 5 == 0) {
        print("Buzz")
    } else {
        print(i)
    }
}

//: Playground - noun: a place where people can play

import UIKit

//Create a function tossCoin() -> String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result
//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss

func tossCoin() -> String {
    print("Tossing a Coin!")
    let toss = Int(arc4random_uniform(2))
    var result: String = String()
    if toss == 0 {
        result = "Heads"
    } else {
        result = "Tails"
    }
    print(result)
    return result
}
func tossMultipleCoins(num: Int) -> Double {
    var heads: Int = Int()
    for _ in 1...num {
        if tossCoin() == "Heads" {
            heads += 1
        }
    }
    return Double(heads)/Double(num)
}
print(tossMultipleCoins(num: 10))

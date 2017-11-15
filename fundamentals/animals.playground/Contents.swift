//: Playground - noun: a place where people can play

import UIKit
//First, create a class called Animal
//
//Give Animal a property "name"
//Give Animal a property "health" with a default value of 100
//Give Animal an initialization that takes in a name and sets the name property appropriately
//Give the animal a displayHealth method
class Animal {
    var name: String
    var health = 100
    init(name:String) {
        self.name = name
    }
    func displayHealth() {
        print(self.health)
    }
}
//Next, create a subclass of Animal called Cat
//
//Give the Cat a method "growl" that prints to the screen "Rawr!"
//Modify the Cat's health to be 150
//Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
class Cat: Animal {
    override init(name: String) {
        super.init(name: name)
        self.health = 150
    }
    func growl() {
        print("Rawr!")
    }
    func run() {
        if(self.health - 10 < 0) {
            print("Not enough health to run")
        } else {
            self.health -= 10
            print("Running")
        }
    }
}
//Next, create two subclasses of Cat - Cheetah and Lion
//
//Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
//Override Lion's health to be 200
//Override the Cheetah's run method to print "Running Fast" and deduct 50 health
//Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)
class Cheetah: Cat {
    override func run() {
        if(self.health - 50 < 0) {
            print("Not enough health to run")
        } else {
            self.health -= 50
            print("Running Fast")
        }
    }
    func sleep() {
        self.health += 50
        if self.health > 200 {
            self.health = 200
        }
    }
}
class Lion: Cat {
    override init(name:String) {
        super.init(name:name)
        self.health = 200
    }
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle!")
    }
    
}
//Create a Cheetah. Have the Cheetah run 4 times. Display the Cheetah's health. Now modify the Cheetah's run method so that it cannot run if it does not have the required health.
//
//Create a Lion. Have the Lion run 3 times. Have the Lion growl.
var cheetah = Cheetah(name: "Fido")
for _ in 1...4 {
    cheetah.run()
}
cheetah.displayHealth()

var lion = Lion(name:"Simba")
lion.run()
lion.run()
lion.run()
lion.displayHealth()
lion.growl()

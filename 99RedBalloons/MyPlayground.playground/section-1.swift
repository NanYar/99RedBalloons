// Playground - noun: a place where people can play

import UIKit
import Foundation


struct Balloon
{
    var number = 0
    var image = ""
}


var myBalloon = Balloon()


var arrayOfBalloons: [Balloon] = []

func createBalloons() -> [Balloon]
{
    for var i = 1; i <= 9; i++
    {
        var balloon = Balloon()
        balloon.number = i
        
        let randomIndex = Int(arc4random_uniform(UInt32(4)))
        switch randomIndex
        {
        case 0: balloon.image = "RedBalloon1.jpg"
        case 1: balloon.image = "RadBalloon2.jpg"
        case 2: balloon.image = "RadBalloon3.jpg"
        case 3: balloon.image = "RadBalloon4.jpg"
        default: break
        }
        
        arrayOfBalloons.append(balloon)
    }
    
    return arrayOfBalloons
}
createBalloons()
arrayOfBalloons

arrayOfBalloons[0].number








var myArrayOfInts: [Int] = []

func createArrayOfInts() -> [Int]
{
    for var i = 0; i < 10; i++
    {
        myArrayOfInts += [i]
    }
    return myArrayOfInts
}
createArrayOfInts()
myArrayOfInts

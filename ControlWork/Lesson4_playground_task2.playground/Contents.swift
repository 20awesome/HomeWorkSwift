//: Playground - noun: a place where people can play

//import UIKit
//
//var str = "Hello, playground"


import UIKit

//Риби діляться на два типи: звичайних та хижих.
//Звичайна рибина має вагу від 1 до 9 кг.
//Хижа рибина має вагу 10 кг.
//Якщо хижа риба з'їдає звичайну - то до ваги хижої риби додається вага з'їденої.
//Звичайні риби не можуть їсти інших.
//
//
//1) Спочатку в акваріум запускають випадкову кількість звичайних риб (від 10 до 50 штук).
//2) Потім запускають двох хижаків.
//3) Хижаки їдять випадкових риб до тих пір поки не з'їдять всих. Хижаки один одного їсти не можуть.



//реализация с помощью функций

var aquarium = [Int]()
let notAngryFishCount = arc4random_uniform(50) + 1 // 1...6
print(notAngryFishCount)

for index in 1...notAngryFishCount {
    print("\(index) index")
    let fishWeight = arc4random_uniform(9) + 1
    aquarium.append(Int(fishWeight))
}
let sum = aquarium.reduce(0,+)
print(sum)
var firstAngryFish = 10
var secondAngryFish = 10

//aquarium.insert(Int(10), at: 0)
//aquarium.insert(Int(10), at: 1)
print(aquarium)
for (index, fish) in aquarium.enumerated() {
    let flip = arc4random_uniform(2)
    if flip == 0{
        firstAngryFish+=fish
        aquarium[index] = 0
    }else{
    secondAngryFish+=fish
        aquarium[index] = 0
    }
}
print(firstAngryFish)
print(secondAngryFish)

//реализация с помощью классов
protocol FishProtocol{
    var weight: Int { get set }
}

class BasicFish: FishProtocol {
    public var weight: Int
    
    init(weight: Int) {
        self.weight = weight
    }
}

class AngryFish: BasicFish {
    init() {
        super.init(weight: 10)
    }
}

class Aqurium {
    var notAngryFishCount: Int
    var aquarium = [Any]()
    init(){
        self.notAngryFishCount = Int(arc4random_uniform(50)) + 1 // 1...6
        for index in 1...self.notAngryFishCount {
//            print("\(index) index")
            let fishWeight = arc4random_uniform(9) + 1
            let fish = BasicFish(weight: Int(fishWeight))
            aquarium.append(fish)
        }
    
    }
    
    func fight(){
    
    }
    
}

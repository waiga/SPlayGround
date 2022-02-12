import UIKit

class Car {
    var colour = "Red"
}

let myCar = Car()
myCar.colour = "Blue"

let yourCar = Car()
print(yourCar.colour)

print()
class Car2 {
    var colour = "Red"
    static let singletonCar = Car2()
}

let myCar1 = Car2.singletonCar
myCar1.colour = "Blue"

let yourCar2 = Car2.singletonCar
print(yourCar2.colour)

class A {
    init() {
        Car2.singletonCar.colour = "Brown"
    }
}

class B {
    init() {
        print(Car2.singletonCar.colour)
    }
}



let a = A()
let b = B()



import Foundation

var pizzaInInches: Int = 10 {

    // before changing, only newValue

    willSet {

        print("pizzaInInches value is \(pizzaInInches)")

        print("and the new Value will be \(newValue)")

    }

    // after changed, only oldValue

    didSet {

        print("old value is \(oldValue)")

        print("and the pizzaInInchesValue is now \(pizzaInInches)")

    }

}

pizzaInInches = 30

print(pizzaInInches)


var numberOfPeople: Int = 6
let slicesPerPerson: Int = 5

var numberOfSlices: Int {
    //getter, read only
    get {
        return pizzaInInches - 4
    }
    
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}
numberOfPizza = 6

print(numberOfPeople)



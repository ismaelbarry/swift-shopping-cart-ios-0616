//  Item.swift

import Foundation

// You can see that it has two settable properties, a string called name and an integer called priceInCents. It's also written with an initializer that takes an argument for either property.

// You'll notice that the Item class also conforms to the Equatable protocol, and the class definition is accompanied by an override of the equality comparator == that determines whether two Items are equal. This has the effect of allowing you to use the equality comparator == on two instances of the Item class (and allows access to various methods like contains(_:) that only make sense on arrays of equatable objects).
class Item: Equatable, CustomDebugStringConvertible {
    var name = ""
    var priceInCents = 0
    
    // The debugDescription property is set up as a "calculated property" which simply returns the name. This property is required for conformance with the CustomDebugStringConvertible protocol that customizes how the class is read by the debug tools.
    var debugDescription: String { return name }
    
    init(name: String, priceInCents: Int) {
        self.name = name
        self.priceInCents = priceInCents
    }
}


func ==(lhs: Item, rhs: Item) -> Bool {
    let sameName = lhs.name == rhs.name
    let samePrice = lhs.priceInCents == rhs.priceInCents
    
    return sameName && samePrice
}


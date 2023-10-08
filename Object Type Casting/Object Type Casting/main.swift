//
//  main.swift
//  Object Type Casting
//
//  Created by Ahmet Erkut on 8.10.2023.
//

import Foundation

/*
    In Swift, "upcasting" and "downcasting" are terms used to describe the process of casting objects between types in a class hierarchy, primarily when dealing with class inheritance and subclasses. These concepts are related to type casting.
*/
class House {
    var windowAmount: Int?
    
    init(windowAmount: Int) {
        self.windowAmount = windowAmount
    }
}

class Palace: House {
    var towerAmount: Int?
    
    init(towerAmount: Int, window: Int) {
        self.towerAmount = towerAmount
        super.init(windowAmount: window)
    }
}

class Villa: House {
    var garageAvailable: Bool?
    
    init(garageAvailable: Bool, window: Int) {
        self.garageAvailable = garageAvailable
        super.init(windowAmount: window)
    }
}

///Upcasting:
///-> Upcasting is the process of casting an instance from a subclass to its superclass.
///-> It involves moving up the class hierarchy, from a more specialized (subclassed) type to a more general (superclass) type.
///-> Upcasting is always safe and does not require the use of the as? operator because every instance of a subclass is also an instance of its superclass.
///-> It is done implicitly, so you don't need to explicitly cast objects for upcasting.
var house = Palace(towerAmount: 3, window: 10) as House

///Downcasting:
///-> Downcasting is the process of casting an instance from a superclass to one of its subclasses.
///-> It involves moving down the class hierarchy, from a more general (superclass) type to a more specialized (subclassed) type.
///-> Downcasting is not always safe because not every superclass instance is a subclass instance, so it requires the use of either as? for conditional downcasting or as! for forced downcasting.
var palace = House(windowAmount: 6) as? Palace

///Type Control
if house is House {
    print("Yes, it is")
} else {
    print("No, is not")
}

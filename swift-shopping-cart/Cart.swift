//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Ismael Barry on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    
    var items : [Item]
    
    convenience init() {
        self.init(items: [])
    }
    
    init(items: [Item]) {
        
        self.items = items
    }
    
    // Method named totalPriceInCents() that takes no arguments and returns an Int. This method should return the total cost of all the items in the items array.
    func totalPriceInCents() -> Int {
    
        var totalPrice : Int = 0
        
        for i in self.items {
            
            totalPrice = totalPrice + i.priceInCents
        }
        
        return totalPrice
    }
    
    // Method named addItem(_:) that takes one argument of type Item and provides no return. This method should add the argument to the end of the items property array.
    func addItem(item: Item) {
        
        self.items.append(item)
    
    }
    
    //  Method named removeItem(_:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item.
    func removeItem(item: Item) {
        
        for (index, eachItemInArray) in self.items.enumerate() {
            
            if eachItemInArray == item {
                
                self.items.removeAtIndex(index)
            }
        }
    }
    
    // Write a method named itemsWithName(_:) that takes one string argument and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.
    func itemsWithName(item: String) -> [Item] {
        
        var returnArray : [Item] = []
        
        for eachItemInArray in self.items {
            
            if eachItemInArray.name == item {
                
                returnArray.append(eachItemInArray)
            }
        }
        
        return returnArray
    }
    
    // Write a method named itemsWithMinimumPriceInCents(_:) that takes one integer argument and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
    func itemsWithMinimumPriceInCents(price: Int) -> [Item] {
        
        var returnArray : [Item] = []
        
        for eachItemInArray in self.items {
            
            if eachItemInArray.priceInCents >= price {
                
                returnArray.append(eachItemInArray)
            }
        }
        
        return returnArray
    }
    
    // Write a method named itemsWithMaximumPriceInCents(_:) that take one integer argument and return an array of type Item. The method should collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument.
    func itemsWithMaximumPriceInCents(price: Int) -> [Item] {
        
        var returnArray : [Item] = []
        
        for eachItemInArray in self.items {
            
            if eachItemInArray.priceInCents <= price {
                
                returnArray.append(eachItemInArray)
            }
        }
        
        return returnArray
    }
}
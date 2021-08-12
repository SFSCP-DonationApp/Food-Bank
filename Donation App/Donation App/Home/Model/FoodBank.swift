//
//  File.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import Foundation

//this holds the items that go inside a card
struct FoodBanks {

    let name: String
    let address:String
    let hours: String
    
    init(name: String, address: String, hours:String) {
        self.name = name
        self.address = address
        self.hours = hours
    }
    
    func returnName() -> String {
        return self.name
    }

    func returnAddress() -> String {
      return self.address
    }

    func returnHours() -> String {
        return self.hours
        }
}

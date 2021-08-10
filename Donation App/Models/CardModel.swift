//
//  CardModel.swift
//  Donation App
//
//  Created by Merissa Bridgeman on 8/6/21.
//

import Foundation

//this holds the items that go inside a card
struct FoodBanks {

let name = ["Food Bank Distribution center", "Alameda County Community Food Bank", "Project Outreach Inc-E Oakland", "California Association of Food Banks"]
let address = ["4000 Redwood Rd", "7900 Edgewater Dr", "6629 Bancroft Ave", "1624 Franklin St" ]
let hours = ["8am-12pm", "8:30am-5pm", "8am-4pm", "8am-5pm"]

func returnName() -> [String] {
    var foodBankName = [String]()
    
    for names in name {
        foodBankName.append(names)
    }
    return foodBankName
}

func returnAddress() -> [String] {
    var foodBankAddress = [String]()
    for addresses in address {
        foodBankAddress.append(addresses)
    }
    return foodBankAddress
}

func returnHours() -> [String] {
    var foodBankHours = [String]()
    for hour in hours {
        foodBankHours.append(hour)
    }
    return foodBankHours
    }
}

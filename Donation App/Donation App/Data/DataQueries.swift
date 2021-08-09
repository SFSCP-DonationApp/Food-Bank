//
//  DataQueries.swift
//  Donation App
//
//  Created by Jeremiah Leary on 8/9/21.
//

import Foundation
import Firebase

let db = Firestore.firestore()

let userRef = db.collection("users")
let foodBankRef = db.collection("foodbanks")

class UserQuery {
    func getUserZipcode() -> String {
        
    }
}

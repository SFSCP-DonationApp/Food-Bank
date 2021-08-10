//
//  DataQueries.swift
//  Donation App
//
//  Created by Jeremiah Leary on 8/9/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift





class UserQuery: ObservableObject {
    private var db = Firestore.firestore()
    @Published var users = [UserMap]()

        struct UserMap {
            let name: String
            let address: String
            let uid: String
            let zipcode: String
            let city: String
            let weightDonated: Int
            let totalDonated: Int
        
    }

    

    
    func fetchData() {
        
        db.collection("users").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No Documents")
                return
            }
            self.users = documents.map {
                (querySnapshot) -> UserMap in
                let data = querySnapshot.data()
                let uid = data["uid"] as? String ?? ""
                let zipcode = data["zipcode"] as? String ?? ""
                let name = data["name"] as? String ?? ""
                let address = data["address"] as? String ?? ""
                let city = data["city"] as? String ?? ""
                let weightDonated = data["weightDonated"] as? Int ?? 0
                let totalDonations = data["TotalDonations"] as? Int ?? 0
                
                return UserMap(name: name, address: address, uid: uid, zipcode: zipcode, city: city, weightDonated: weightDonated, totalDonated: totalDonations)
            }
            
    }
    
}

}

class foodBankQuery: ObservableObject {
    
    private var db = Firestore.firestore()
    @Published var foodBanks = [foodBank]()
    
    struct foodBank{
        let name: String
        let Zipcode: String
        let max_capacity: Int
        let current_capacity: Int
    }
    
    func fetchData() {
        db.collection("foodbanks").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else{
                print("No Documents")
                return
            }
            self.foodBanks = documents.map{ (querySnapshot) -> foodBank in
                let data = querySnapshot.data()
                let name = data["name"] as? String ?? ""
                let zipcode = data["Zipcode"] as? String ?? ""
                let max_capacity = data["max_capacity"] as? Int ?? 0
                let current_capacity = data["current_capacity"] as? Int ?? 0
                
                return foodBank(name: name, Zipcode: zipcode, max_capacity: max_capacity, current_capacity: current_capacity)
            }
        }
    }
}

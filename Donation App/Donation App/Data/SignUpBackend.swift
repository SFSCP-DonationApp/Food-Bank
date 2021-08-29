//
//  SignUpBackend.swift
//  Donation App
//
//  Created by Jeremiah Leary on 8/3/21.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestoreSwift

//New User struct
struct NewUser {
    let name: String
    let email: String
    let address: String
    let city: String
    let zipcode: String
    let password: String
    var weightDonated: Int  = 0
    var totalDonations: Int  = 0
}

class SignUp {
    func SignUpTap(NewUser:NewUser, errorLabel:UILabel){
        //validate fields
        let error = validateFields(NewUser: NewUser)
        if error != nil{
            self.showError(error ?? "Error", errorLabel: errorLabel)
        }
        else {
            //create the user
            Auth.auth().createUser(withEmail: NewUser.email, password: NewUser.password) { (result, err) in
                if err != nil {
                    self.showError("Error creating user.", errorLabel: errorLabel)
                }
                else{
                    //user created successfully
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data:
                        [
                            "name":NewUser.name,
                            "address":NewUser.address,
                            "city":NewUser.city,
                            "zipcode":NewUser.zipcode,
                            "weightDonated":NewUser.weightDonated,
                            "totalDonations":NewUser.totalDonations,
                            "uid":result!.user.uid
                        ]){_ in
                        if error != nil {
                            self.showError("Error saving data.", errorLabel: errorLabel)
                        }
                    }
                }
            }
        }
    }
    
    func validateFields(NewUser:NewUser) -> String? {
        //ensure all fields are filled out
        if NewUser.name == "" ||
            NewUser.email == "" ||
            NewUser.address == "" ||
            NewUser.city == "" ||
            NewUser.zipcode == "" ||
            NewUser.password == ""
            {
            return "Please fill in all fields"
        }
        //ensure password is secure
        if self.isPasswordValid(NewUser.password) == false {
            return "Please make a stronger password"
        }
        return nil
    }
    func isPasswordValid(_ password : String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    func showError(_ message:String, errorLabel:UILabel){
        errorLabel.text = message
        errorLabel.alpha = 1
    }
}

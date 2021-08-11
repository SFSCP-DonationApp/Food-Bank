//
//  LoginBackend.swift
//  Donation App
//
//  Created by Jeremiah Leary on 8/3/21.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

struct ExistingUser {
    let email:String
    let password: String
}

class LogIn {
    func LoginTap(ExistingUser: ExistingUser, errorLabel:UILabel) {
        
        //Validate fields
        let error = validateFields(ExistingUser: ExistingUser)
        if error != nil{
            self.showError(error ?? "Error", errorLabel: errorLabel)
        }
        else {
            let email = ExistingUser.email
            let password = ExistingUser.password
            //sign in user
            Auth.auth().signIn(withEmail: email, password: password) { (result, err) in
                if err != nil {
                    errorLabel.text = err!.localizedDescription
                    errorLabel.alpha = 1
                    
                }
            }
        }
    }
        //clean inputs
    func validateFields(ExistingUser: ExistingUser) -> String? {
            //ensure all fields are filled out
            if ExistingUser.email == "" ||
                ExistingUser.password == ""
                {
                return "Please fill in all fields"
            }
            return nil
        }
    func showError(_ message:String, errorLabel:UILabel){
            errorLabel.text = message
            errorLabel.alpha = 1
        }
        
    }



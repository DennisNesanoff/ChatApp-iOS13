//
//  RegisterViewController.swift
//  ChatApp-iOS13
//
//  Created by Dennis Nesanoff on 18.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                // Navigate to ChatViewController
                self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

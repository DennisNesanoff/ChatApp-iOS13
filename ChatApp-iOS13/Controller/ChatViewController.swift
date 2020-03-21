//
//  ChatViewController.swift
//  ChatApp-iOS13
//
//  Created by Dennis Nesanoff on 19.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Constants.appName
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
}

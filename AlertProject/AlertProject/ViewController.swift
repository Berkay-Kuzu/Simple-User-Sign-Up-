//
//  ViewController.swift
//  AlertProject
//
//  Created by Berkay Kuzu on 6.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        /*
         let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
         print("Button Clicked!")
         }
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         */
        
        if userNameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username not found!")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password not found!")
        } else if passwordText.text != passwordText2.text {
            makeAlert(titleInput: "Error!", messageInput: "Passwords do not match!")
        } else {
           makeAlert(titleInput: "Error!", messageInput: "Success!")
        }
    }

    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK" , style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}


//
//  skipViewController.swift
//  Odev4
//
//  Created by Macbook Pro on 30.09.2022.
//

import UIKit

class skipViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField?.delegate = self
        passwordTextField?.delegate = self
        logInButton?.isUserInteractionEnabled = false
        logInButton?.alpha = 0.5
    }
    
    func textField(_ textField: UITextField,  shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

            let text = (textField.text! as NSString).replacingCharacters(in: range, with: string)
            

        if !text.isEmpty {
                logInButton?.isUserInteractionEnabled = true
                logInButton?.alpha = 1.0
                
                
            } else {
                logInButton?.isUserInteractionEnabled = false
                logInButton?.alpha = 0.5
                
            }
            return true
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toHomePageViewController" {
            
        }
    }
   
    @IBAction func logInButton(_ sender: Any) {
        performSegue(withIdentifier: "toHomePageViewController", sender: nil)
        
    }
    
}

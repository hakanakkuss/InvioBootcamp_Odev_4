import UIKit

class VerifyNowViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //submitButton.isEnabled = false
        emailTextField?.delegate = self
        submitButton?.isUserInteractionEnabled = false
        submitButton?.alpha = 0.5
        
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

            let text = (textField.text! as NSString).replacingCharacters(in: range, with: string)

            if !text.isEmpty{
                submitButton?.isUserInteractionEnabled = true
                submitButton?.alpha = 1.0
                submitButton.backgroundColor = UIColor(named: "YaziRenk1")
                
            } else {
                submitButton?.isUserInteractionEnabled = false
                submitButton?.alpha = 0.5
                
            }
            return true
        }
    
    
    @IBAction func submitButton(_ sender: Any) {
        performSegue(withIdentifier: "toSubmitPageViewController", sender: nil)
        emailTextField.text = ""
      
       
    }
  
    
}

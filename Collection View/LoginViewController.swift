//
//  loginViewController.swift
//  Project1
//
//  Created by STUDENT on 4/15/24.
//

import UIKit

class LoginViewController: UIViewController , UITextFieldDelegate{
  
    
    @IBOutlet var username: UITextField!
    
    
    @IBOutlet var password: UITextField!
    
    
    @IBOutlet var forgotPassword: UIButton!
    
    
    @IBOutlet var Submit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitButttonPressed(_ sender: Any)
    {
        
        if username.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please fill Email", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if password.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please fill Password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
            
        else {
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginCompleted")
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == ""{
            return true
        }
        if textField == username {
            if textField.text?.count ?? 0 > 15 {
                return false
            }
        }
        else if textField == password {
            if textField.text?.count ?? 0 > 15 {
                return false
            }
        }
        return true
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

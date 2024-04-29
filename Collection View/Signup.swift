//
//  NextViewController.swift
//  Project1
//
//  Created by STUDENT on 4/15/24.
//

import UIKit

class Signup: UIViewController, UITextFieldDelegate{
    
    
    
    @IBOutlet var Name: UITextField!
    
    @IBOutlet var Email: UITextField!
    
    
    @IBOutlet var Password: UITextField!
    
    
    @IBOutlet var ConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitButtonPressed(_ sender: Any){
        
        if Name.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please fill Name", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if Email.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please fill Email", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if Password.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please fill Password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if ConfirmPassword.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please fill ConfirmPassword", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if !self.isValidEmail(Email.text!){
            let alert = UIAlertController(title: "Alert", message: "Please fill Valid Email", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginViewController")
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == ""{
            return true
        }
        if textField == Name {
            if textField.text?.count ?? 0 > 15 {
                return false
            }
        }
        else if textField == Email {
            if textField.text?.count ?? 0 > 15 {
                return false
            }
        }
        else if textField == Password {
            if textField.text?.count ?? 0 > 15 {
                return false
            }
        }
        else if textField == ConfirmPassword {
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

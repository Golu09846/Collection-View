//
//  LoginCompleted.swift
//  Project1
//
//  Created by STUDENT on 4/16/24.
//

import UIKit

class LoginCompleted: UIViewController {

    @IBOutlet var Completed: UILabel!
  
    
    @IBOutlet var GoBack: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButttonPressed(_ sender: Any){
    
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dashboardViewContoller")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func submitButtton(_ sender: Any){
    
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CollectionViewController")
        self.navigationController?.pushViewController(controller, animated: true)
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

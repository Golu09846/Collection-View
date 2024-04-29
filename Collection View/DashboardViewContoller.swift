//
//  DashboardViewContoller.swift
//  Project1
//
//  Created by STUDENT on 4/16/24.
//

import UIKit

class DashboardViewContoller: UIViewController, UITableViewDelegate,UITableViewDataSource      {
    
    
    
    
    
    
    
    
    @IBOutlet weak var dashTableView: UITableView!
        let rowsArray = [["name":"Ajit"],["name":"Gourav"],["name":"Archita"],["name":"Archita"],["name":"Anchal"],["name":"Ajit"],["name":"Gourav"],["name":"Archita"],["name":"Archita"],["name":"Anchal"]]
       
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return rowsArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "dashboardTableViewCell", for: indexPath) as! DashboardTableViewCell
            
            
            
            
            
            cell.nameLabel.text = self.rowsArray[indexPath.row]["name"]
            return cell
        }
    

    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

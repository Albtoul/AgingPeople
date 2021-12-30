//
//  ViewController.swift
//  AgingPeople
//
//  Created by Hell on 30/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var names = ["George" , "Betty" , "Fran" , "Joe" , "Helda" , "Winifred" , "Zed" , "Sara" , "Jeffy" , "Abraham" , "Anna" , "Melinda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension ViewController : UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = "\(Int.random(in: 5...95)) years old"
        
        return cell
    }
    

    
}


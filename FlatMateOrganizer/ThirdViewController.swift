//
//  ThirdViewController.swift
//  FlatMateOrganizer
//
//  Created by kacper on 04/11/2022.
//

import UIKit

class ThirdViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    var tab: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var button: UIButton!
    @IBAction func addNewButton(_ sender: Any) {
        tab.append("")
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let textfieldcell = UINib(nibName: "FMCell", bundle: nil)
        tableView.register(textfieldcell, forCellReuseIdentifier: "FMCell")
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        if let tablica = defaults.object(forKey: "Tablica") as? [String]
        {
            self.tab = tablica
        }
        else{
            self.tab = []
        }
    }
    


}


extension ThirdViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
}

extension ThirdViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FMCell") as? FMCell
        cell?.ondidEditingChange = { [self] text in
            tab[indexPath.row] += text
            self.save(tab: self.tab)
        }
        cell?.textField.text = tab[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tab.count
    }
    func save(tab: [String]){
        defaults.set(tab, forKey: "Tablica")
    }
}
 

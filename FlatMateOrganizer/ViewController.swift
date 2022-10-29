//
//  ViewController.swift
//  FlatMateOrganizer
//
//  Created by kacper on 28/09/2022.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBOutlet weak var ZalogujSięLabel: UILabel!    //Textfield "Zaloguj się"
    @IBAction func SignInButton(_ button: UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondController = storyboard.instantiateViewController(withIdentifier: "secondController") as! SecondViewController
        self.navigationController?.pushViewController(secondController, animated: true)
    }
    
    
    
}

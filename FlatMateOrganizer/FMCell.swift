//
//  FMCell.swift
//  FlatMateOrganizer
//
//  Created by kacper on 23/11/2022.
//

import UIKit

class FMCell: UITableViewCell, UITextFieldDelegate {
    var ondidEditingChange: ((String) -> Void)?
    @IBOutlet weak var textField: UITextField!
    
    //var model = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        textField.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func didTapCell(_ sender: Any) {
        print("Dupa")
    }
    
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textField.text)
        ondidEditingChange!(textField.text ?? "")
        return true
    }
   
    
}

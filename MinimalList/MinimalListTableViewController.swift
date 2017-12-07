//
//  MinimalListTableViewController.swift
//
//  MinimalList
//
//  A minimal shopping list designed to keep you within budget
//  by limiting to only 5 items!
//
//  Created by Sergey Kozak on 06/12/2017.
//  Team members:
//  Irvinder Kaur 300929258
//  Sergey Kozak 300979113
//  Sergey Sharipov 300961984
//
//  Copyright © 2017 Centennial. All rights reserved.
//

import UIKit

class MinimalListTableViewController: UITableViewController, UITextFieldDelegate {
    
    // Outlets for text labels
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    
    
    // Outlets for editable text fields
    
    @IBOutlet weak var listTitle: UITextField!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var fourthTextField: UITextField!
    @IBOutlet weak var fifthTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

 
    
    // Action to clear everything
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        // list title
        listTitle.text = ""
        
        // shopping items
        firstTextField.text = ""
        secondTextField.text = ""
        thirdTextField.text = ""
        fourthTextField.text = ""
        fifthTextField.text = ""
        
        // shopping list quantities
        firstLabel.text = "0"
        secondLabel.text = "0"
        thirdLabel.text = "0"
        fourthLabel.text = "0"
        fifthLabel.text = "0"
    }
    
    // A stepper action to increment items in the shopping list
    
    @IBAction func firstStepper(_ sender: UIStepper) {
        switch sender.tag {
        case 1:
            firstLabel.text = Int(sender.value).description
        case 2:
            secondLabel.text = Int(sender.value).description
        case 3:
            thirdLabel.text = Int(sender.value).description
        case 4:
            fourthLabel.text = Int(sender.value).description
        case 5:
            fifthLabel.text = Int(sender.value).description
        default:
            firstLabel.text=""
        }
        
    }
    
    // dismissing the keyboard
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        listTitle.resignFirstResponder()
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
        thirdLabel.resignFirstResponder()
        fourthTextField.resignFirstResponder()
        fifthTextField.resignFirstResponder()
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

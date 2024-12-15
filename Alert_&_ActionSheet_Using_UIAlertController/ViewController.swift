//
//  ViewController.swift
//  Alert_&_ActionSheet_Using_UIAlertController
//
//  Created by Macintosh on 15/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func alertBtn(_ sender: UIButton) {
        
        let alert = UIAlertController(title : "My Title here", message: "My Message here", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        
        alert.addTextField { textfield in
            textfield.placeholder = "Enter your Name"
        }
        
        let cancelButton = UIAlertAction(title: "Cancel Button", style: .cancel) { (action) in
        print("Cancel Buttonof Alert")
            
            print(alert.textFields?.first?.text)
        }
        alert.addAction(cancelButton)
        
        let defaultButton = UIAlertAction(title: "Default Button", style: .default) { (action) in
        print("Default Buttonof Alert")
        }
        alert.addAction(defaultButton)
        
        let destructiveButton = UIAlertAction(title: "Destructive Button", style: .destructive) { (action) in
        print("Destructive Button of Alert")
        }
        alert.addAction(destructiveButton)
        
    }
    
    @IBAction func actionSheetBtn(_ sender: UIButton) {
        
        let sheet = UIAlertController(title: "My Title here", message: "My Message here", preferredStyle: .actionSheet)
        present(sheet, animated: true, completion: nil)
        
        let cancelButton1 = UIAlertAction(title : "Cancel Button", style: .cancel) { (action) in
        print("Cancel Button of ActionSheet")
        }
        sheet.addAction(cancelButton1)
        
        let defaultButton1 = UIAlertAction(title: "Default Button", style: .default) { (action) in
        print("Default Button of ActionSheet")
        }
        sheet.addAction(defaultButton1)
        
        let destructiveButton1 = UIAlertAction(title: "Destructive Button", style: .destructive) { (action) in
        print("Destructive Button of ActionSheet")
        }
        sheet.addAction(destructiveButton1)
        
    }
}





//let alert = UIAlertController(title : nil, message: nil, preferredStyle: .alert)

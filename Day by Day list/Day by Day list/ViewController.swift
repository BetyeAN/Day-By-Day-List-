//
//  ViewController.swift
//  Day by Day list
//
//  Created by Betye on 6/21/18.
//  Copyright © 2018 Betye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addItem(_ sender: Any) {
        if textField.text != "" {
            let delegate = UIApplication.shared.delegate as!AppDelegate
            let context =
                delegate.persistentContainer.viewContext
            let task = Task(context: context)
            task.name = textField.text
            
            delegate.saveContext()
            
            // reset textfield text and close keyboard
            textField.text = ""
            view.endEditing(true) // close Keyboard
            
        }
    }

}


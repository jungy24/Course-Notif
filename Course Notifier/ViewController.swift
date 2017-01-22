//
//  ViewController.swift
//  Course Notifier
//
//  Created by Jungyoon Yu on 1/21/17.
//  Copyright © 2017 Jungyoon Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var classCountField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //moving from city to another, and u send the furniture to the city ur moving to
        let vc = segue.destination as! ViewController2
        let arrayL = Int(classCountField.text!)
        
        vc.classCount = Int(classCountField.text!)
        vc.arrayLength = arrayL
    }
    
    @IBAction func onNext(_ sender: Any) {
        guard let value = Int(classCountField.text!) else {
            print("value error")
            return
        }
        
        if value < 1 {
            return
        }
        
        performSegue(withIdentifier: "classSegue", sender: nil)
    }
}


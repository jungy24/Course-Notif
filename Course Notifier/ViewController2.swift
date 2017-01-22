//
//  ViewController2.swift
//  Course Notifier
//
//  Created by Jungyoon Yu on 1/21/17.
//  Copyright © 2017 Jungyoon Yu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var classCount: Int?
    var arrayLength: Int?
    var courseId = 1
    
    @IBOutlet weak var courseCountLabel: UILabel!
    @IBOutlet weak var courseField: UITextField!
    @IBOutlet weak var daysField: UITextField!
    @IBOutlet weak var startField: UITextField!
    @IBOutlet weak var endField: UITextField!
    
    override func viewDidLoad() {
        
        courseCountLabel.text = String(format: "What is course #%d?", courseId)
        
        super.viewDidLoad()

        print(classCount)
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onNext(_ sender: Any) {
        let newCount = classCount! - 1
    
        if newCount == 0 {
            print("classes have been added")
            performSegue(withIdentifier: "classFinishSegue", sender: nil)
        } else {
            let next = self.storyboard?.instantiateViewController(withIdentifier: "class") as! ViewController2
            
            next.classCount = classCount! - 1
            next.courseId = courseId + 1
            
            self.navigationController?.pushViewController(next, animated: true)
        }
        
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

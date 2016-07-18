//
//  HelloViewController.swift
//  keyBoard
//
//  Created by Ainor Syahrizal on 16/07/2016.
//  Copyright © 2016 Ainor Syahrizal. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var helloButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func becomeFirstResponder(nameTextField: UITextField) -> Bool {
        cityTextField.becomeFirstResponder()
        return true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sayHello(sender: AnyObject) {
        
        let name: String = nameTextField.text!
        let city: String = cityTextField.text!
        
            self.textLabel.text = "Hello \(name) from \(city)"
        
        if nameTextField.isFirstResponder() {
            nameTextField.resignFirstResponder()
        }
        
        if cityTextField.isFirstResponder() {
            cityTextField.resignFirstResponder()
        }
        
    }
    
    
    @IBAction func nameFirst(sender: AnyObject) {
        
        self.nameTextField.becomeFirstResponder()
    }
    
    
    @IBAction func cityFirst(sender: AnyObject) {
        self.cityTextField.becomeFirstResponder()
    }
    
    @IBAction func nameResign(sender: AnyObject) {
        self.nameTextField.resignFirstResponder()
    }
    
    @IBAction func cityResign(sender: AnyObject) {
        self.cityTextField.resignFirstResponder()
    }
   
}

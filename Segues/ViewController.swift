//
//  ViewController.swift
//  Segues
//
//  Created by Administrator on 6/27/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var displayUser: UIBarButtonItem!
    @IBOutlet weak var btnLogIn: UIButton!
    @IBOutlet weak var btnForgotUN: UIButton!
    @IBOutlet weak var btnForgotPW: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == btnForgotPW {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == btnForgotUN {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
        
    }
    

    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
*/
    @IBAction func goToConfirmLogin(_ sender: Any) {
        performSegue(withIdentifier: "User", sender: nil)
    }
    
    @IBAction func findUserName(_ sender: Any) {
        performSegue(withIdentifier: "Forgot Username", sender: nil)
    }
    
    @IBAction func findPassword(_ sender: Any) {
        performSegue(withIdentifier: "Forgot Password", sender: nil)    }
    
}



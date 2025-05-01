//
//  ViewController.swift
//  loginAppleGoogleExperiment
//
//  Created by CAMERON BRADFORD on 4/30/25.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func googleLoginAction(_ sender: UIButton) {
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
           guard error == nil else {
               print("error")
               return }
            self.performSegue(withIdentifier: "loginSuccess", sender: self)
         }
    }
    
}


//
//  ViewController2.swift
//  loginAppleGoogleExperiment
//
//  Created by CAMERON BRADFORD on 5/1/25.
//

import UIKit
import GoogleSignIn
import FirebaseAuth
import FirebaseCore

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signOutAction(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
          try
            firebaseAuth.signOut()
            performSegue(withIdentifier: "signOut", sender: self)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

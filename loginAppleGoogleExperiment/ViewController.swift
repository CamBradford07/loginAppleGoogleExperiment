//
//  ViewController.swift
//  loginAppleGoogleExperiment
//
//  Created by CAMERON BRADFORD on 4/30/25.
//

import UIKit
import GoogleSignIn
import FirebaseCore
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func googleLoginAction(_ sender: UIButton) {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { [unowned self] result, error in
          guard error == nil else {
            return
          }

          guard let user = result?.user,
            let idToken = user.idToken?.tokenString
          else {
              return
          }

          let credential = GoogleAuthProvider.credential(withIDToken: idToken,
        accessToken: user.accessToken.tokenString)
            Auth.auth().signIn(with: credential) { result, error in
            performSegue(withIdentifier: "loginSuccess", sender: self)
            }
        }
        
    
    }
    
}


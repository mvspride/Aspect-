//
//  LoginViewController.swift
//  Aspect
//
//  Created by Pride Mbabit on 11/10/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func onSignUp(_ sender: UIButton) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground{
            (success,error) in if success{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }else{
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    @IBAction func onSignIn(_ sender: UIButton) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username,password: password){
            (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }else{
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    @IBAction func googleSignIn(_ sender: UIButton) {
    }
    
    @IBAction func appleSignIn(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

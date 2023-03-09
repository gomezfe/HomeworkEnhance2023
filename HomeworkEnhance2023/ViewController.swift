//
//  ViewController.swift
//  HomeworkEnhance2023
//
//  Created by Felipe Gomez on 3/7/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initItems()
    }
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        let email = emailTextField.text
        let password = passwordTextField.text
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let detailsViewController: DetailViewController = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailsViewController.emailDetail = email ?? ""
        detailsViewController.passwordDetail = password ?? ""
        
        
//        self.present(detailsViewController, animated: true)
        self.navigationController?.pushViewController(detailsViewController, animated: true)
    }
    
    func initItems() {
        titleLabel.text = "Welcome"
        subtitleLabel.text = "Please LogIn !!!"
        loginButtonOutlet.setTitle("LogIn", for: .normal)
    }

}



//For FE's - Assignment for today
//Create a Complete App in UI Kit covering the below screens.
//Screen 1- Login Screen
//Screen 2- Details screen, data on details screen should be get passed from first screen
//Design this screens, give constraints and add actions to buttons
//Programmatically change data label title's/text and also change button Titles as well.
//
//


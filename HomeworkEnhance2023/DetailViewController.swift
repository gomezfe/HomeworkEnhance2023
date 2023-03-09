//
//  DetailViewController.swift
//  HomeworkEnhance2023
//
//  Created by Felipe Gomez on 3/9/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var emailOutputLabel: UILabel!
    @IBOutlet weak var passwordOutputLabel: UILabel!
    
    var emailDetail = ""
    var passwordDetail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = "User Details"
        
        emailOutputLabel.text = "Email is: \(emailDetail)"
        passwordOutputLabel.text = "Password is: \(passwordDetail)"
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

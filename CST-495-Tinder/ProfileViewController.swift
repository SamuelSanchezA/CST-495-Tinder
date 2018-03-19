//
//  ProfileViewController.swift
//  CST-495-Tinder
//
//  Created by Samuel on 3/19/18.
//  Copyright © 2018 Samuel. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    var profileImage : UIImage!{
        didSet{
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.image = profileImage
        // Do any additional setup after loading the view.
    }
    @IBAction func onDone(_ sender: UITapGestureRecognizer) {
        dismiss(animated: true) {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

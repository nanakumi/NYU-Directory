//
//  DetailViewController.swift
//  NYU Directory
//
//  Created by Nana Kumi on 4/24/17.
//  Copyright © 2017 Nana Kumi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  
  var prefferedName: String = String()
  var roleTitleInfo: String = String()
  var departmentName: String = String()
  var fullAddress: String = String()
  var contactInfo: String = String()
  var miscInformation: String = String()
  var telephoneNumber: String = String()
  
  
  
  @IBOutlet weak var preferredNameLabel: UILabel!
  
  @IBOutlet weak var roleTitleLabel: UILabel!
  
  @IBOutlet weak var addressTextView: UITextView!
  
  @IBOutlet weak var contactTextView: UITextView!
  
  @IBOutlet weak var informationTextView: UITextView!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      populateData()
      
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func populateData(){
    
    preferredNameLabel.text  = prefferedName
    roleTitleLabel.text = roleTitleInfo
    addressTextView.text = fullAddress
    contactTextView.text = contactInfo
    informationTextView.text = miscInformation
    
  }
 
  @IBAction func callButton(_ sender: UIButton) {
  
     if let url = URL(string: "tel://\(telephoneNumber)") {
      UIApplication.shared.open(url, options: [:])
    }
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

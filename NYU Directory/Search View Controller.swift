//
//  Search View Controller.swift
//  NYU Directory
//
//  Created by Nana Kumi on 4/23/17.
//  Copyright © 2017 Nana Kumi. All rights reserved.
//

import UIKit

class Search_View_Controller: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
 


  
  //****IB Outlets****
  
  @IBOutlet weak var searchTextField: UITextField!
  @IBOutlet weak var searchResultsTableView: UITableView!
  
  //****Global Variables****
  var searchEntry: String = String()
  

  
  
    override func viewDidLoad() {
        
        super.viewDidLoad()

        executeDemo()
        
     searchResultsTableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "resultCell")
      
      self.searchResultsTableView.dataSource = self
      self.searchResultsTableView.delegate = self
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  //**** TableView Construction Protocol ****
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return searchResults.count
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let index = searchResults[indexPath.row]
    
   let cell = searchResultsTableView.dequeueReusableCell(withIdentifier: "resultCell") as! ResultTableViewCell
    
    cell.employeeFullNameLabel.text = index.fullName
    cell.employeeRoleTitleLabel.text = index.roleTitle
    cell.employeeDepartmentLabel.text = index.universityDepartment
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    
    let detailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    
    let fullAddress = ("\(searchResults[indexPath.row].streetNumberOfAddress)" + "\n" + searchResults[indexPath.row].roomNumberofAddress + "\n" + searchResults[indexPath.row].cityOfAddress + ", " + searchResults[indexPath.row].regionofAddress + " " + searchResults[indexPath.row].postalCodeofAddress)
    
    let contactInfo = ("\(searchResults[indexPath.row].telephoneNumber + "\n" + searchResults[indexPath.row].emailAddress)")
    
    let miscInformation = ("\(searchResults[indexPath.row].fullName + "\n" + searchResults[indexPath.row].netID + "\n" + searchResults[indexPath.row].cityOfAddress)")
    
    detailViewController.prefferedName = searchResults[indexPath.row].fullName
    detailViewController.roleTitle = searchResults[indexPath.row].roleTitle
    detailViewController.departmentName = searchResults[indexPath.row].universityDepartment
    detailViewController.fullAddress = fullAddress
    detailViewController.contactInfo = contactInfo
    detailViewController.miscInformation = miscInformation
    detailViewController.telephoneNumber = searchResults[indexPath.row].telephoneNumber
    
    
    
    navigationController?.pushViewController(detailViewController, animated: true)
    
  }
  
  
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  {
    return 85.0 //Choose your custom row height
  }
  
  
  
  
  //****Auxilliary Functions****

  func processSearch(){
    
    var foundEntry: Employee = Employee()
    
    searchEntry = searchTextField.text!
    
    print("\(searchEntry)")
    print(searchResults.count)
    
  for entry in searchResults
  {
    if (entry.fullName.lowercased().range(of: searchEntry) != nil)  {
      
     foundEntry = entry
      
      
      
    }
    
    }
  
    print("\(foundEntry.fullName)" + " " + "\(foundEntry.roleTitle)")
    
  }
  
  
  
  
  
  //****IB Actions****
  
  @IBAction func searchButtonPushed(_ sender: UIButton) {
    
    
    self.view.endEditing(true)
    
    
    processSearch()
    
  
  }
  
  
  
    
  
}

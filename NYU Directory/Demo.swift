//
//  Demo.swift
//  NYU Directory
//
//  Created by Nana Kumi on 4/24/17.
//  Copyright © 2017 Nana Kumi. All rights reserved.
//

import Foundation

var searchResults:[Employee] = [Employee]()
//*****DEMO CONTENT*****

func executeDemo(){
  
  
  let nanaKumi = Employee(givenName: "Nana", middleName: "Kwaku", familyName: "Kumi", fullName: "Nana Kwaku Kumi", netID: "nk177", primaryCampus: "Washington Square", telephoneNumber: "4535439876", emailAddress: "nana@nyu.edu", countryofAddress: "USA", cityOfAddress: "NewYork", postalCodeofAddress: "10003", regionofAddress: "NY", roomNumberofAddress: "453", streetNumberOfAddress: "10 Astor Pl", universityDepartment: "NYU IT", universityOrganization: "Desktop Support", roleTitle: "IT Analyst")
  
  let apurbaMaiti = Employee(givenName: "Larry", middleName: "L", familyName: "King", fullName: "Larry L King", netID: "lk345", primaryCampus: "Washington Square", telephoneNumber: "6783225744", emailAddress: "maiti@nyu.edu", countryofAddress: "USA", cityOfAddress: "NewYork", postalCodeofAddress: "11234", regionofAddress: "NY", roomNumberofAddress: "765B", streetNumberOfAddress: "10 Mercer", universityDepartment: "Global Programs", universityOrganization: "Global Admissions", roleTitle: "Admissions Officer")
  
  let treyBrown = Employee(givenName: "Trey", middleName: "Linden", familyName: "Brown", fullName: "Trey Linden Brown", netID: "tlb49", primaryCampus: "Washington Square", telephoneNumber: "7634329854", emailAddress: "t.brown@nyu.edu", countryofAddress: "USA", cityOfAddress: "Brooklyn", postalCodeofAddress: "11223", regionofAddress: "NY", roomNumberofAddress: "135", streetNumberOfAddress: "573 Jay Street", universityDepartment: "FCM", universityOrganization: "Facilities", roleTitle: "Chief Architect")
  
  
  
  
  searchResults.append(nanaKumi)
  searchResults.append(apurbaMaiti)
  searchResults.append(treyBrown)
  
  
  
  
  
}

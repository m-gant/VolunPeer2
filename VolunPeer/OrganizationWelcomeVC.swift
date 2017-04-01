//
//  OrganizationWelcomeVC.swift
//  VolunPeer
//
//  Created by Mitchell Gant on 4/1/17.
//  Copyright © 2017 VolunPeer. All rights reserved.
//

import UIKit
import Firebase

class OrganizationWelcomeVC: UIViewController {

    @IBOutlet weak var orgNameLabel: UILabel!
    var orgRef:FIRDatabaseReference!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let nonOptOrgRef = orgRef else {
            print("there is no organization Reference")
            return
        }
        orgRef = nonOptOrgRef
        print(orgRef)
        orgRef.child("name").observeSingleEvent(of: .value, with: { snapshot in
            if snapshot.exists() {
                let organizationName = snapshot.value as! String
                self.orgNameLabel.text = organizationName
            } else {
                print("there is not organization name.")
            }
        })
    }

    

}

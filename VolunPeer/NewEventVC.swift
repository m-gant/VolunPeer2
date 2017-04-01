//
//  NewEventVC.swift
//  VolunPeer
//
//  Created by Mitchell Gant on 4/1/17.
//  Copyright © 2017 VolunPeer. All rights reserved.
//

import UIKit

class NewEventVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var volunteerTypes: [(String, Bool)] = [("Education", false), ("Entertainment", false), ("Military", false), ("Religious", false), ("Charity", false), ("Politics", false), ("Sports", false), ("Community Involvement", false), ("Technology", false), ("Other", false)]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (volunteerTypes.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vType") as! VolunteerTypeCell
        let volunteerType = volunteerTypes[indexPath.row]
        if volunteerType.1  == true {
            cell.isSelectedLabel.text = "✓"
        } else {
            cell.isSelectedLabel.text = ""
        }
        cell.volunteerTypeLabel.text = volunteerType.0
        cell.backgroundColor = .clear
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var volunteerType = volunteerTypes[indexPath.row]
        print(volunteerType.1)
        if volunteerType.1  == true {
            volunteerTypes[indexPath.row]  = (volunteerType.0, false)
        } else {
            volunteerTypes[indexPath.row]  = (volunteerType.0, true)
            
        }
        tableView.reloadData()
    }

}

class VolunteerType {
    var type: String
    var isSelected: Bool
    
    init(type T: String, isSelected IS: Bool) {
        type = T; isSelected = IS
    }
}

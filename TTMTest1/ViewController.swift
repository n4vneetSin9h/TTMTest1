//
//  ViewController.swift
//  TTMTest1
//
//  Created by Navneet Singh on 15/10/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController {
    
    @IBOutlet weak var feedsTable: UITableView!
    @IBOutlet weak var usersView: UIView!
    @IBOutlet weak var usersProfilePic: UIImageView!
    var selectedRow: IndexPath = [0,0]

    override func viewDidLoad() {
        super.viewDidLoad()
        usersView.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)
        usersProfilePic.clipsToBounds = true
        usersProfilePic.layer.cornerRadius = 50
        usersProfilePic.backgroundColor = UIColor.black
        self.navigationController?.navigationBar.barTintColor = UIColor.flatNavyBlue()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 9
        } else {
            return 9
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 176
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0{
            return 50
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let timeTravelInputView = UIView()
        timeTravelInputView.backgroundColor = UIColor.flatNavyBlue()
        return timeTravelInputView
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Past"
        } else {
            return "Future"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedsTableViewCell
        
        //setup the cell content
        cell.profilePic.contentMode = .scaleAspectFill
        cell.profilePic.clipsToBounds = true
        cell.profilePic.layer.cornerRadius = cell.profilePic.bounds.width/2
        cell.selectionStyle = .none
        //defining cell for each kind section
        if indexPath.section == 0{
            cell.profilePic.image = UIImage(named: "boy\(indexPath.row + 1).jpg")
            cell.username.text = "boy\(indexPath.row + 1)"
            cell.twitterHandle.text = "@\(indexPath.row + 1)boy"
        } else {
            cell.profilePic.image = UIImage(named: "girl\(indexPath.row + 1).jpg")
            cell.username.text = "girl\(indexPath.row + 1)"
            cell.twitterHandle.text = "@\(indexPath.row + 1)girl"
        }
        
        if cell.expand{
            cell.seeMoreLbl.text = "Show Less"
        } else {
            cell.seeMoreLbl.text = "Show More"
        }
        
        return cell
    }
   
}

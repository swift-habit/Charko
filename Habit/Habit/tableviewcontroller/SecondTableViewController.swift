//
//  SecondTableViewController.swift
//  Habit
//
//  Created by Charko on 2018. 5. 27..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    var Cals: Array<Calendar> = []

    @IBOutlet var tvCalendar: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if Cals[indexPath.row].weekType == 7 {
            let cell = tvCalendar.dequeueReusableCell(withIdentifier: "week7day", for: indexPath) as! Calendar5DayTableViewCell
            
            return cell
        }
        else {
            let cell = tvCalendar.dequeueReusableCell(withIdentifier: "week7day", for: indexPath) as! Calendar5DayTableViewCell
            
            return cell
        }
    }
}

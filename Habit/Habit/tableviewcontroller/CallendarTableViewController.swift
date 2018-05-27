//
//  CallendarTableViewController.swift
//  Habit
//
//  Created by Charko on 2018. 5. 13..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class CallendarTableViewController: UITableViewController {
    
    var Cals: Array<Calendar> = []
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "calTableViewCell", for: indexPath) as! calTableViewCell

        return cell
    }
}

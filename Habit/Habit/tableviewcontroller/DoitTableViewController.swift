//
//  TableViewController.swift
//  Habit
//
//  Created by Charko on 2018. 5. 13..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class DoitTableViewController: UITableViewController {

    var Titles: Array<Doit> = []

    @IBOutlet var tvTitle: UITableView!
    
    var doitCell: theamDoitTableViewCell!
    
    public func setTitles(Titles: Array<Doit>) {
        self.Titles = Titles
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Titles.append(Doit.init(isChecked: false, Name: "첫번째"))
        Titles.append(Doit.init(isChecked: false, Name: "두번째"))
        Titles.append(Doit.init(isChecked: true, Name: "세번째"))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1 // 리피트 ?
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Titles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvTitle.dequeueReusableCell(withIdentifier: "PrototypeCell", for: indexPath) as! theamDoitTableViewCell
        
        cell.cbView.tag = indexPath.row
        cell.set(content: Titles[indexPath.row])
        
        cell.cbView.addTarget(self, action: #selector(self.cellCheckboxSelected(sender:)), for: .touchUpInside)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Titles[indexPath.row].isChecked = !Titles[indexPath.row].isChecked
        tvTitle.reloadData()
        
//        print("Selected cell")

    }
    
    @IBAction func cellCheckboxSelected(sender: UIButton) {
        Titles[sender.tag].isChecked = !Titles[sender.tag].isChecked
//        print(sender.tag)
//        print("cell Atction")
        tvTitle.reloadData()
    }
}

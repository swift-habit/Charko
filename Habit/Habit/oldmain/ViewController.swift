//
//  ViewController.swift
//  Habit
//
//  Created by Charko on 2018. 4. 29..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tvCalender: UITableView!
    @IBOutlet weak var tvTitle: UITableView!
    
    var Titles: Array<Doit> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvTitle.delegate = self
        tvTitle.dataSource = self
        tvCalender.allowsSelection = false
        
        Titles.append(Doit.init(isChecked: false, Name: "첫번째"))
        Titles.append(Doit.init(isChecked: false, Name: "두번째"))
        Titles.append(Doit.init(isChecked: true, Name: "세번째"))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Titles.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let title = tvTitle.dequeueReusableCell(withIdentifier: "PrototypeCell") as! theamDoitTableViewCell? {
            title.set(content: Titles[indexPath.row])
            return title
        }
        else {
            let calender = tvCalender.dequeueReusableCell(withIdentifier: "") as! calTableViewCell?
            
            calender?.set(content: CalendarCheck(isDoit: true, dtDate: Date(), desc: "calTableViewCell"))
            return calender!
        }
    
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
            self.Titles.remove(at: indexPath.row)
            self.tvTitle.reloadData()
        })
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        Titles[indexPath.row].isChecked = !Titles[indexPath.row].isChecked
        tvTitle.reloadData()
    }
}


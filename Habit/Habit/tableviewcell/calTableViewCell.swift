//
//  calTableViewCell.swift
//  Habit
//
//  Created by Charko on 2018. 5. 6..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class calTableViewCell: UITableViewCell {
    
    lazy var calendars = Calendar(calendarNumber: collCal.count)

    @IBOutlet var collCal: [UIButton]!
    
    @IBAction func clickCal(_ sender: UIButton) {
        
        if let calendarCellNum = collCal.index(of: sender){
            calendars.checkIt(number: calendarCellNum)
        } else {
            print("choosent card was not UIButtons")
        }
        
        updateView()
    }
    
    func updateView(){
        for index in collCal.indices {
            let button = collCal[index]
            let cal = calendars.Calendars[index]
            
            if cal.isDoit == true {
                button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            }
            else {
                button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            }
        }
    }
    
    public func set(content: Array<CalendarCheck>) {
        for item in content.indices {
            let calendar: CalendarCheck = content[item]
            
            if calendar.isDoit {
                collCal[item].backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func set(content: CalendarCheck) {
        
    }

}

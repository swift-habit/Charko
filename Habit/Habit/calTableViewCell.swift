//
//  calTableViewCell.swift
//  Habit
//
//  Created by Charko on 2018. 5. 6..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class calTableViewCell: UITableViewCell {

    @IBOutlet var collCal: [UIButton]!
    
    var Calendars: Array<CalendarCheck> = [] // 5 x 4 20개
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func set(content: CalendarCheck) {
        
    }

}

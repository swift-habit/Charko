//
//  Calendar5DayTableViewCell.swift
//  Habit
//
//  Created by Charko on 2018. 5. 27..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class Calendar5DayTableViewCell: UITableViewCell {
    var Calendars: Array<CalendarCheck> = []

    public func setWeeks(weeks: Array<CalendarCheck>) {
        self.Calendars = weeks
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

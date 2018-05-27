//
//  CallenderCheck.swift
//  Habit
//
//  Created by Charko on 2018. 5. 6..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import Foundation

class CalendarCheck {
    var isDoit: Bool
    var dtDate: Date
    var desc: String
    
    init(isDoit: Bool, dtDate: Date, desc: String) {
        self.isDoit = isDoit
        self.dtDate = dtDate
        self.desc = desc
    }
    
}

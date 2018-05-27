//
//  Calendar.swift
//  Habit
//
//  Created by Charko on 2018. 5. 20..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import Foundation

class Calendar {
    var weekType: Int // 주 몇일(5일, 7일)
    var Calendars: Array<CalendarCheck> = []
    
    init(calendarNumber: Int ) {
        if calendarNumber > 20 {
            weekType = 7
        } else {
            weekType = 5
        }
        
        makeCalendar(calendarNumber: weekType * 4)
    }
    
    private func makeCalendar(calendarNumber: Int) {
        for _ in 1...calendarNumber {
            Calendars.append(CalendarCheck(isDoit: false, dtDate: Date(), desc: ""))
        }
    }
    
    private func checkIt(number: Int) {
        Calendars[number].isDoit = !Calendars[number].isDoit
    }
}

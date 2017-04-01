//: Playground - noun: a place where people can play

import UIKit

var calendar = NSCalendar.autoupdatingCurrent
calendar.locale = NSLocale.autoupdatingCurrent
calendar.timeZone = NSTimeZone.local
calendar.firstWeekday = 6

let monthStrings = calendar.shortMonthSymbols
let dateComps = (calendar as NSCalendar).components([.month, .day], from: Date())
let monthIndex = dateComps.month! - 1
let dayIndex = dateComps.day

var result: [String] = []
if dayIndex! >= 7 {
    for (index, day) in ((dayIndex! - 6)...dayIndex!).enumerated() {
        switch index {
        case 0:
            result.append((monthStrings[monthIndex]) + " " + String(day))
        default:
            result.append(String(day))
        }
    }
}else {
    let firstDateComps = (calendar as NSCalendar).components([.month, .day], from: Date().addingTimeInterval(-6 * 24 * 3600))
    for day in 0..<(7 - dayIndex!) {
        switch day {
        case 0:
            result.append((monthStrings[firstDateComps.month! - 1]) + " " + String(describing: firstDateComps.day))
        default:
            result.append(String(firstDateComps.day! + day))
        }
    }
    
    for (index, day) in (1...dayIndex!).enumerated() {
        switch index {
        case 0:
            result.append(monthStrings[monthIndex] + " " + String(day))
        default:
            result.append(String(day))
        }
    }
}

print(result)



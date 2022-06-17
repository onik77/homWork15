//
//  main.swift
//  homeWork15
//
//  Created by Onik Grigoryan on 17.06.22.
//

import Foundation


class MyTime {
    var hour: Int = 0
    var minute: Int = 0
    var second: Int = 0

    func setHour(_ h: Int) {
        if h >= 0 && h <= 24{
            hour = h            //erb jamy 23:59:59 tpi 00:00:00
        }
    }
    func setMinute(_ m: Int) {
        if m >= 0 && m < 60 {
            minute = m
        } else {
            minute = 0
            hour += 1
        }
    }
    func setSecond(_ s: Int) {
        if s >= 0 && s < 60 {
           second = s
        }
        else {
            second = 0
            minute += 1
            }
            if minute == 60 {
                second = 0
                minute = 0
                hour += 1
            }
    }
    func myReturnTime() -> String {
        return (String(format: "%02d:%02d:%02d", hour, minute, second))
    }
    func myPrintTime() {
        print(String(format:  "%02d:%02d:%02d", hour, minute, second))
    }
}

let newValueTime = MyTime()
newValueTime.setHour(20)
newValueTime.setMinute(60)
newValueTime.setSecond(60)
newValueTime.myPrintTime()



class MyDate {
    var day = 30
    var month = 12
    var year = 2021
    var newDateTime = MyTime()

    func setDay(_ d: Int) {
            if d >= 1 && d <= 31 {
                day = d
            }
        }
        func setMonth(_ m: Int) {
            if m >= 1 && m <= 12 {
                month = m
            }
        }
        func setYear() {
            if month == 12 && day == 31 {
                year += 1
                month = 1
                day = 1
            }
        }
    func myNewHour() {
        newDateTime.setHour(18)
    }
    func myNewMinut() {
        newDateTime.setMinute(60)
        
    }
    func myNewSecond() {
        newDateTime.setSecond(59)
    }
    func returnMyDate() -> String {
        return "dd:mm:yyyy \(day):\(month):\(year) / hh:mm:ss";
                 (String(format:  "%02d:%02d:%02d", newDateTime.hour , newDateTime.minute , newDateTime.second))
    }
    func printMyDate() {
        print("dd:mm:yyyy \(day):\(month):\(year) / hh:mm:ss",
              (String(format:  "%02d:%02d:%02d", newDateTime.hour , newDateTime.minute , newDateTime.second))
        )
    }
}

let all = MyDate()
all.setDay(31)
all.setMonth(12)
all.setYear()
all.myNewHour()
all.myNewMinut()
all.myNewSecond()
all.printMyDate()

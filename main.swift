//
//  main.swift
//  homeWork15
//
//  Created by Onik Grigoryan on 17.06.22.
//

import Foundation
// homeWork 15_1
let newValueTime = MyTime()
newValueTime.setHour(23)
newValueTime.setMinute(59)
newValueTime.addSecond(60)
newValueTime.myPrintTime()


//homeWork 15_2

let all = MyDate()
all.setDay(31)
all.setMonth(12)
all.setYear()
all.myNewHour(23)
all.myNewMinut(59)
all.myNewSecond(60)
all.printMyDate()

//
//let date = Date()
//var calendar = Calendar.current
//
//if let timeZone = TimeZone(identifier: "EVN") {
//   calendar.timeZone = timeZone
//}
//
//let hour = calendar.component(.hour, from: date)
//let minute = calendar.component(.minute, from: date)
//let second = calendar.component(.second, from: date)
//let day = calendar.component(.day, from: date)
//let month = calendar.component(.month, from: date)
//let year = calendar.component(.year, from: date)
//
//print("\(day):\(month):\(year) \n \(hour):\(minute):\(second)")

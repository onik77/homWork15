//
//  MyDate.swift
//  homeWork15
//
//  Created by Onik Grigoryan on 18.06.22.
//
import Foundation

//2. Ստեղծել class որը MyDate անունով որը պետք է ունենա ամսաթիվը  և ժամանակը բնութագրող property-եր (օր, ամիս, տարի, MyTime տիպի property-ի որը ստեղծվել էր առաջին խնդրում)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել օրվա սկզբնական արժեքը
//- փոխել ամսվա սկզբնական արժեքը
//- փոխել տարվա սկզբնական արժեքը
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը, օրը, ամիսը, տարին

class MyDate {
    var day = 30
    var month = 12
    var year = 2022
    var newDateTime = MyTime()

    func setDay(_ d: Int) {
            if d >= 1 && d <= 31 {
                day = d
            } else {
                day = 0
            }
        }
    
        func setMonth(_ m: Int) {
            if m >= 1 && m <= 12 {
                month = m
            } else {
                month = 0
            }
        }
    
        func setYear() {
            if month == 12 && day == 31 {
                day = 1
                year += 1
                month = 1
               
            }
        }
    
    func myNewHour(_ h: Int) {
        if h >= 0 && h < 24 {
            newDateTime.hour = h
            day += 1
        }
        
    }
    
    func myNewMinut(_ m: Int) {
        newDateTime.minute = m


    }
    
    func myNewSecond(_ s: Int) {
        newDateTime.second = s
    }
    
    func addSecond() {
        if newDateTime.hour == 24 && newDateTime.second == 60 {
            day += 1
        }
    }
    
    func returnMyDate() -> String {
        return "dd:mm:yyyy \(day):\(month):\(year) / hh:mm:ss";
//                 (String(format:  "%02d:%02d:%02d", newDateTime.hour , newDateTime.minute , newDateTime.second))
    }
    func printMyDate() {
        print("dd:mm:yyyy \((String(format: "%02d:%02d:%02d", day , month , year))), hh:mm:ss \((String(format: "%02d:%02d:%02d",newDateTime.hour , newDateTime.minute , newDateTime.second)))")
                    
    }
}

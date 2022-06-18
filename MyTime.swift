////
////  MyTime.swift
////  homeWork15
////
////  Created by Onik Grigoryan on 18.06.22.
////
//
//import Foundation
//

//1. Ստեղծել class որը MyTime անունով որը պետք է ունենա ժամանակը բնութագրող property-եր (ժամ, րոպե, վարկյան)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
//- ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը

class MyTime {
    var hour: Int = 0
    var minute: Int = 0
    var second: Int = 0

    func setHour(_ h: Int) {

        if h >= 0 && h < 24 {
            hour = h

        } else if hour == 24 {
            hour = 0
        } else {
            hour = 0
        }

    }
    func setMinute(_ m: Int) {

        if m >= 0 && m < 60 {
            minute = m

        } else if m == 60 {
            minute = 0
            hour += 1
        }
    }
    func addSecond(_ s: Int) {

        if s >= 0 && s < 60 {
           second = s
        } else if s == 60 {
            second = 0
            minute += 1
        } else {
            second = 0
            }

        if minute == 60 {
                second = 0
                minute = 0
                hour += 1
            }

        if hour == 24 {
            hour = 0
        }
    }



    func myReturnTime() -> String {

        return (String(format: "%02d:%02d:%02d", hour, minute, second))
    }

    func myPrintTime() {

        print("hh:mm:ss",String(format: "%02d:%02d:%02d", hour, minute, second))
    }


}







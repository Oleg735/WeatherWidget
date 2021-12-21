///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import SwiftUI

struct WeatherUtils {
    
    let weather: Instruction!
    
    static func getWeatherIcon(current: String) -> String {
        switch current {
        case _ where current.contains("01d"):
            return "sun.max"
        case _ where current.contains("02d"):
            return "cloud.sun"
        case _ where current.contains("01n"):
            return "moon"
        case _ where current.contains("02n"):
            return "cloud.moon"
        case _ where current.contains("03d") || current.contains("03n"):
            return "cloud"
        case _ where current.contains("04d") || current.contains("04n"):
            return "smoke"
        case _ where current.contains("09d") || current.contains("09n"):
            return "cloud.rain"
        case _ where current.contains("10d"):
            return "cloud.sun.rain"
        case _ where current.contains("10n"):
            return "cloud.moon.rain"
        case _ where current.contains("11d") || current.contains("11n"):
            return "cloud.bolt"
        case _ where current.contains("13d") || current.contains("13n"):
            return "snow"
        case _ where current.contains("50d") || current.contains("50n"):
            return "cloud.fog"
        default:
            return "cloud.sun"
        }
    }
    static func getNormalDate ( _ timestamp: Int) -> Date {
        let newDate = timestamp
        let epocTime = TimeInterval(newDate)
        let myDate = Date(timeIntervalSince1970: epocTime)
        return myDate
    }
    
    static func returnArray(arr: [Int]) -> [Int] {
        
       var arrTemps = arr
   
       arrTemps.sort()
       
       return arrTemps
       
   }
}

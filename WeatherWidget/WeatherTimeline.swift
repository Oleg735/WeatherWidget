///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import WidgetKit
import SwiftUI

struct WeatherTimeline: TimelineProvider {
    typealias Entry = WeatherEntry
    
    func placeholder(in context: Context) -> WeatherEntry {
        var weatherInfo: Instruction
        
        weatherInfo = Instruction(lat: 100, lon: 50, current: Current(dt: 00000000, temp: 0.0, weather: [Weather(description: "", icon: "10d")]), daily: [Daily(dt: 111111, temp: Temp(day: 0.0, min: -1.0, max: 77.0, night: 0.0), weather: [Weather(description: "", icon: "10d")])], hourly: [Hourly(dt: 00000000, temp: 0.0, weather: [Weather(description: "", icon: "01d")])])
        
        let entry = WeatherEntry(date: Date(), weatherInfo: weatherInfo)
        
        return entry
    }
    
    func getSnapshot(in context: Context, completion: @escaping (WeatherEntry) -> Void) {
        var weatherInfo: Instruction
        
        weatherInfo = Instruction(lat: 100, lon: 50, current: Current(dt: 00000000, temp: 0.0, weather: [Weather(description: "", icon: "01d")]), daily: [Daily(dt: 111111, temp: Temp(day: 0.0, min: -1.0, max: 77.0, night: 0.0), weather: [Weather(description: "", icon: "01d")])], hourly: [Hourly(dt: 00000000, temp: 0.0, weather: [Weather(description: "", icon: "01d")])])

        let entry = WeatherEntry(date: Date(), weatherInfo: weatherInfo)
        completion(entry)
  
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<WeatherEntry>) -> Void) {
        let currentDate = Date()
        let refreshDate = Calendar.current.date(byAdding: .minute, value: 5, to: currentDate)!
        
        WeatherSevice().getWeather { result in
            var weatherInfo: Instruction
            switch result {
            case .success(let instruction):
                weatherInfo = instruction
            case .failure(let error):
                print("Errorr: \(error)")
                weatherInfo = Instruction(lat: 50, lon: 24, current: Current(dt: 22222222, temp: 0.0, weather: []), daily: [], hourly: [])
            }
            let entry = WeatherEntry(date: currentDate, weatherInfo: weatherInfo)
            let timeline = Timeline(entries: [entry], policy: .after(refreshDate))
            completion(timeline)
        }
        
    }
}

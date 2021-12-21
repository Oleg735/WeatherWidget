///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import SwiftUI

struct WeatherEntryView: View {
    let entry: WeatherEntry
    private let baseColor = Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))
    private let darkColor = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    
    @Environment(\.widgetFamily) var family
    
    var body: some View {
        switch family {
        case .systemSmall:
            ZStack {
                Spacer()
                WeatherView(weather: entry.weatherInfo, updatedDate: entry.date)
            } .edgesIgnoringSafeArea(.all)
            Spacer()
        case .systemMedium:
            ZStack {
                DailyWeatherView(weather: entry.weatherInfo, updatedDate: entry.date)
            } .edgesIgnoringSafeArea(.all)
            
        case .systemLarge:
            ZStack {
                DailyWeatherView(weather: entry.weatherInfo, updatedDate: entry.date)
            }.edgesIgnoringSafeArea(.all)
        default:
            ZStack {
                WeatherView(weather: entry.weatherInfo, updatedDate: entry.date)
            } .edgesIgnoringSafeArea(.all)
        }
    }
}

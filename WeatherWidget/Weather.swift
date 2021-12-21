///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import Foundation

struct Current: Codable {
    let dt: Int
    let temp: Double
    let weather: [Weather]
}

struct Hourly: Codable {
    let dt: Int
    let temp: Double
    let weather: [Weather]
}

struct Daily: Codable {
    let dt: Int
    let temp: Temp
    let weather: [Weather]
}

struct Weather: Codable {
    let description: String
    let icon: String
}

struct Temp: Codable {
    let day, min, max, night: Double
}



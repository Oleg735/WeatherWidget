///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import Foundation


struct Instruction: Codable {
    let lat: Double
    let lon: Double
    let current: Current
    let daily: [Daily]
    let hourly: [Hourly]
}

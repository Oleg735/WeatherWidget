///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import SwiftUI

struct WeatherView: View {
    let weather: Instruction
    let updatedDate: Date
        
    
    var body: some View {
        let celcius: Int = Int(round(Double(weather.current.temp) - 273.15))
        //let str = "http://openweathermap.org/img/wn/10d@2x.png"
        VStack {
            Spacer()
            HStack() {
                VStack {
                    Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.current.weather[0].icon))")
                        .font(.system(size: 24))
                    Text("\(celcius)°C")
                        .font(.system(size: 15))
                } .frame(width: 37)
                Spacer()
                VStack(alignment: .trailing) {
                    Text((WeatherUtils.getNormalDate(weather.current.dt).getFormattedDate(format: "E")).lowercased())
                        .font(.system(size: 17))
                    Text(WeatherUtils.getNormalDate(weather.current.dt).getFormattedDate(format: "d MMM"))
                }
            }
            Spacer()
            HStack {
                Text((WeatherUtils.getNormalDate(weather.daily[0].dt).getFormattedDate(format: "E")).lowercased())
                    .font(.system(size: 17))
                    .frame(width: 35)
                Spacer()
                Text((WeatherUtils.getNormalDate(weather.daily[1].dt).getFormattedDate(format: "E")).lowercased())
                    .font(.system(size: 17))
                    .frame(width: 35)
                Spacer()
                Text((WeatherUtils.getNormalDate(weather.daily[2].dt).getFormattedDate(format: "E")).lowercased())
                    .font(.system(size: 17))
                    .frame(width: 35)
            }
            HStack(alignment: .center) {
                
                Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.daily[0].weather[0].icon))")
                    .font(.system(size: 20))
                    .frame(width: 35)
                Spacer()
                
                Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.daily[1].weather[0].icon))")
                    .font(.system(size: 20))
                    .frame(width: 35)
                Spacer()
                
                Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.daily[2].weather[0].icon))")
                    .font(.system(size: 20))
                    .frame(width: 35)
            }
            HStack {
                VStack {
                    Text("\(Int(round(Double(weather.daily[0].temp.max) - 273.15)))°C")
                        .font(.system(size: 14))
                    Text("\(Int(round(Double(weather.daily[0].temp.min) - 273.15)))°C")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                } .frame(width: 35)

                Spacer()
                VStack {
                    Text("\(Int(round(Double(weather.daily[1].temp.max) - 273.15)))°C")
                        .font(.system(size: 14))
                    Text("\(Int(round(Double(weather.daily[1].temp.min) - 273.15)))°C")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                } .frame(width: 35)
                Spacer()
                VStack {
                    Text("\(Int(round(Double(weather.daily[2].temp.max) - 273.15)))°C")
                        .font(.system(size: 14))
                    Text("\(Int(round(Double(weather.daily[2].temp.min) - 273.15)))°C")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                } .frame(width: 35)
            }
            
            Spacer()
        } .padding(.horizontal, 10)
    }
}




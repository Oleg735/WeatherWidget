///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import SwiftUI

struct DailyWeatherView: View {
    let weather: Instruction
    let updatedDate: Date
    
    var body: some View {
        let celcius: Int = Int(round(Double(weather.current.temp) - 273.15))
        VStack (alignment: .center) {
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
                    Text((WeatherUtils.getNormalDate(weather.current.dt).getFormattedDate(format: "EEEE")).lowercased())
                        .font(.system(size: 17))
                    Text(WeatherUtils.getNormalDate(weather.current.dt).getFormattedDate(format: "d MMMM"))
                }
            }
            Spacer()
            HStack {
                Group {
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
                    Spacer()
                }
                Group {
                    Text((WeatherUtils.getNormalDate(weather.daily[3].dt).getFormattedDate(format: "E")).lowercased())
                        .font(.system(size: 17))
                        .frame(width: 35)
                    Spacer()
                    Text((WeatherUtils.getNormalDate(weather.daily[4].dt).getFormattedDate(format: "E")).lowercased())
                        .font(.system(size: 17))
                        .frame(width: 35)
                    Spacer()
                    Text((WeatherUtils.getNormalDate(weather.daily[5].dt).getFormattedDate(format: "E")).lowercased())
                        .font(.system(size: 17))
                        .frame(width: 35)
                }
                
            }
            HStack(alignment: .center) {
                Group {
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
                    Spacer()
                }
                Group {
                    Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.daily[3].weather[0].icon))")
                        .font(.system(size: 20))
                        .frame(width: 35)
                    Spacer()
                    
                    Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.daily[4].weather[0].icon))")
                        .font(.system(size: 20))
                        .frame(width: 35)
                    Spacer()
                    
                    Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.daily[5].weather[0].icon))")
                        .font(.system(size: 20))
                        .frame(width: 35)
                }
                
            }
            HStack {
                Group {
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
                    Spacer()
                }
                Group {
                    VStack {
                        Text("\(Int(round(Double(weather.daily[3].temp.max) - 273.15)))°C")
                            .font(.system(size: 14))
                        Text("\(Int(round(Double(weather.daily[3].temp.min) - 273.15)))°C")
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                    } .frame(width: 35)
                    Spacer()
                    VStack {
                        Text("\(Int(round(Double(weather.daily[4].temp.max) - 273.15)))°C")
                            .font(.system(size: 14))
                        Text("\(Int(round(Double(weather.daily[4].temp.min) - 273.15)))°C")
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                    } .frame(width: 35)
                    Spacer()
                    VStack {
                        Text("\(Int(round(Double(weather.daily[5].temp.max) - 273.15)))°C")
                            .font(.system(size: 14))
                        Text("\(Int(round(Double(weather.daily[5].temp.min) - 273.15)))°C")
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                    } .frame(width: 35)
                }
            }
            
            Spacer()
        } .edgesIgnoringSafeArea(.all)
            .padding(.horizontal, 10)
        
    }
}


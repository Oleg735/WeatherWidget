//
//  SmallWeatherView.swift
//  WeatherExample
//
//  Created by user on 21.12.2021.
//

import SwiftUI

struct SmallWeatherView: View {
    let weather: Instruction
    
    var body: some View {
       
        
        GeometryReader { geometry in
            
            let heightFirstStack = geometry.size.height * 0.6
            let additionalArr: [Int] = [Int(round(Double(weather.current.temp) - 273.15)), Int(round(Double(weather.hourly[0].temp) - 273.15)), Int(round(Double(weather.hourly[1].temp) - 273.15)), Int(round(Double(weather.hourly[2].temp) - 273.15))]
            let arrTemps = WeatherUtils.returnArray(arr: additionalArr)
    //            arrTemps.sort()
            let difference = arrTemps[3] - arrTemps[0] + 1
            let numOfSpace = (heightFirstStack - 14.5) / Double(difference)
            
        ZStack {
            VStack {
                HStack(alignment: .bottom) {
                    
                    VStack (){
                        Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.current.weather[0].icon))")
                        Text("\(Int(round(Double(weather.current.temp) - 273.15)))°C")
                            .font(.system(size: 11))

                    } .frame(width: geometry.size.width * (29 / geometry.size.height))
                    .padding(.top, heightFirstStack / 2 + 29 / 2)
                    .offset(y: numOfSpace * Double(arrTemps[0] - (Int(round(Double(weather.current.temp) - 273.15)))))
                    Spacer()
                    
                    VStack {
                        Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.hourly[0].weather[0].icon))")
                        Text("\(Int(round(Double(weather.hourly[0].temp) - 273.15)))°C")
                            .font(.system(size: 11))
                    }
                    .offset(y: numOfSpace * Double(arrTemps[0] - (Int(round(Double(weather.hourly[0].temp) - 273.15)))))
                    //.padding(.bottom, heightFirstStack - 3 * numOfSpace)
                    //.padding(.top, heightFirstStack / 2 + 29 / 2)
                    //.offset(y: -37.25)
                    Spacer()

                    VStack {
                        Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.hourly[1].weather[0].icon))")
                        Text("\(Int(round(Double(weather.hourly[1].temp) - 273.15)))°C")
                            .font(.system(size: 11))

                    } // .padding(.bottom, heightFirstStack - 2 * numOfSpace)
                    //.padding(.top, heightFirstStack / 2 - 29 / 2)
                    //.offset(y: 37.25 / 2)
                    .offset(y: numOfSpace * Double(arrTemps[0] - (Int(round(Double(weather.hourly[2].temp) - 273.15)))))

                    Spacer()

                    VStack {
                        Image(systemName: "\(WeatherUtils.getWeatherIcon(current: weather.hourly[2].weather[0].icon))")
                        Text("\(Int(round(Double(weather.hourly[2].temp) - 273.15)))°C")

                            .font(.system(size: 11))
                    }
                    .offset(y: numOfSpace * Double(arrTemps[0] - (Int(round(Double(weather.hourly[3].temp) - 273.15)))))
                    //.padding(.top, heightFirstStack / 2 - 29 / 2)
                    //.padding(.bottom, heightFirstStack - numOfSpace)
                } .frame(height: heightFirstStack)
                    //.padding(.top, heightFirstStack / 2 - 29 / 2)
                    

                Spacer()
                HStack {

                    Text(("Now").uppercased())
                        //.frame(width: geometry.size.width * 0.183)
                    Spacer()
                    Text(("08 pm").uppercased())
                        //.frame(width: geometry.size.width * 0.183)
                    Spacer()
                    Text(("12 am").uppercased())
                        //.frame(width: geometry.size.width * 0.183)
                    Spacer()
                    Text(("09 am").uppercased())
                        //.frame(width: geometry.size.width * 0.183)


                }
                .font(.system(size: geometry.size.width * 0.057))
            } .padding( .all, 10)
            //.edgesIgnoringSafeArea(.all)
        }
//            .foregroundColor(.red)
//            .background(
//                Image("Weather2")
//                    .resizable()
//                    .scaledToFill()
//            ).edgesIgnoringSafeArea(.all)

        }
    }
}

//struct SmallWeatherView_Previews: PreviewProvider {
//    static var previews: some View {
//        SmallWeatherView()
//    }
//}

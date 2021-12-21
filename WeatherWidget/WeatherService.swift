///**
/**
 
 WeatherWidgetExtension
 CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
 COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC
 
 */

import SwiftUI

class WeatherSevice {
    enum WeatherError: Error {
        case noData
        case failedToParse
    }
    
    let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=49.83&lon=24.00&exclude=minutely,alerts&appid=0d52e733efe16b758f4dd36582450fa4")!
    
    func getWeather(completion: @escaping (Result<Instruction, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            guard let data = data else {
                completion(.failure(WeatherError.noData))
                return
            }
            
            if let instruction = self.getWeatherResponse(fromData: data) {
                completion(.success(instruction))
            } else {
                completion(.failure(WeatherError.failedToParse))
            }
        }.resume()
    }
    
    
    private func getWeatherResponse(fromData data: Data) -> Instruction? {
        do {
            let weatherData = try? JSONDecoder().decode(Instruction.self, from: data)
            if let weatherD = weatherData {
                return weatherD
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
    
}

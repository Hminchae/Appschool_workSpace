//
//  WeatherNetworkManager.swift
//  PractceWeatherAPI
//
//  Created by 황민채 on 11/30/23.
//

import Foundation

struct WholeJsonStruct: Decodable {
    let weather: [Weather]
}
struct Weather: Decodable, Hashable {
    
//    "id":300,
//    "main":"Drizzle",
//    "description":"light intensity drizzle",
//    "icon":"09d"
    
    let id: Int
    let main: String
    let description: String
    let icon: String
    
}
class WeatherNetworkManager: ObservableObject {
    static let shared = WeatherNetworkManager()
    private init() {
        
    }
    @Published var info = [Weather]()
    
    private var apikey: String {
        
        let keyFileName = "ApiKeys"
        let apiKey = "API_KEY"
        
        // 생성한 .plist 파일 경로 불러오기
        guard let filePath = Bundle.main.path(forResource: keyFileName, ofType: "plist") else {
            fatalError("Could not find file '\(keyFileName).plist'")
        }
        
        let plist = NSDictionary(contentsOfFile: filePath)
        
        guard let value = plist?.object(forKey: apiKey) as? String else {
            fatalError("Could not find key '\(apiKey)'")
        }
        
        return value
    }
    func fetchdata() {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=\(apikey)"
        
        guard let url = URL(string: urlString) else { return }
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                // 정상적으로 값이 오지 않았을 때 처리
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let json = try JSONDecoder().decode(WholeJsonStruct.self, from: data)
                print(json.weather.first!)
                DispatchQueue.main.async {
                    self.info = json.weather
                }
            } catch let error {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    }
}

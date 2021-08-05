//
//  HTTPManager.swift
//  DeMov
//
//  Created by Yahya Bn on 14/05/1400 AP.
//

import Foundation

class HTTPManager {
    static let shared: HTTPManager = HTTPManager()
    
    private enum HTTPError: Error {
        case invalidURL
        case invalidResponse(Data?, URLResponse?)
    }
    
    public func get(with request: Request, completionBlock: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: request.urlString) else {
            completionBlock(.failure(HTTPError.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard error == nil else {
                completionBlock(.failure(error!))
                return
            }
            
            guard let responseData = data,
                  let httpResponse = response as? HTTPURLResponse,
                  200 ..< 300 ~= httpResponse.statusCode else {
                completionBlock(.failure(HTTPError.invalidResponse(data, response)))
                return
            }
            
            completionBlock(.success(responseData))
        }
        
        task.resume()
    }
}

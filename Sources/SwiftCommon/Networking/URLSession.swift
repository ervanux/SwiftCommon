//
//  URLSession.swift
//  AppStoreReviews
//
//  Created by Erkan Ugurlu on 8.08.2020.
//  Copyright © 2020 ING. All rights reserved.
//

import Foundation

public extension URLSession {
    typealias ServiceCallback<Model: Decodable> = (Result<Model?, FetchError>) -> Void
    
    func fetch<Model: Decodable>(url: Destionation, completion: @escaping ServiceCallback<Model> ) {

        guard let url = URL(string: url.rawValue) else {
            completion(.failure(.invalidUrl))
            return
        }
        
        fetch(url: url, completion: completion)
    }
    
    func fetch<Model: Decodable>(url: URL, completion: @escaping ServiceCallback<Model> ) {
        
        let request = URLRequest(url: url)
        let task = dataTask(with: request) { (data, response, error) in
            guard error == nil else {
                completion(.failure(.protocolError(error!)))
                return
            }
            
            //this is success because some url just returns success without any body.
            guard let data = data, data.count > 0 else {
                completion(.success(nil))
                return
            }
            
            do {
                let json = try JSONDecoder().decode(Model.self, from: data)
                completion(.success(json))
            } catch {
                completion(.failure(.invalidResponse))
            }
        }
        task.resume()
    }
}

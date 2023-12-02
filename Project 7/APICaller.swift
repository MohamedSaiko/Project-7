//
//  APICaller.swift
//  Project 7
//
//  Created by Mohamed Sayed on 02.12.23.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case networkError
    case decodingError
}

struct APICaller {
    func loadData(completion: @ escaping (Result<Petetions, NetworkError>) -> Void) {
        let url = URL(string: urlString)
        guard let url = url else {
            completion(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                completion(.failure(.networkError))
                return
            }
            do {
                let jsonPetitions = try JSONDecoder().decode(Petetions.self, from: data)
                completion(.success(jsonPetitions))
            }
            catch {
                    completion(.failure(NetworkError.decodingError))
            }
        }
        task.resume()
    }
}

//
//  Manager.swift
//  Project 7
//
//  Created by Mohamed Sayed on 01.12.23.
//

import Foundation

struct Manager {
    var apiCaller = APICaller()
    var petetions = [Petetion]()
    
    func getData(completion: @escaping (Petetions) -> Void) {
        apiCaller.loadData { result in
            switch result {
            case .success(let petitions):
                completion(petitions)
            case .failure(let error):
                print(error)
            }
        }
    }
}

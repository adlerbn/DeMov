//
//  MovieViewModel.swift
//  DeMov
//
//  Created by Yahya Bn on 14/05/1400 AP.
//

import Foundation
import Combine

class MovieViewModel {
    
    var movies: [MovieModel] = [MovieModel(id: "1", imdb_id: "1234", title: "Deadpool", image: "")]
    
    //MARK: - Initialization
    init(model: [MovieModel]? = nil) {
        if let inputModel = model {
            self.movies = inputModel
        }
    }
}

extension MovieViewModel {
    func fetchMovie(request: Request, completion: @escaping (Result<[MovieModel], Error>) -> Void) {
        HTTPManager.shared.get(with: request) { [self] result in
            switch result {
            case .failure(let error):
                print("Failure, \(error)")
            case .success(let data):
                let decoder = JSONDecoder()
                do {
                    movies = try decoder.decode([MovieModel].self, from: data)
                    completion(.success(movies))
                } catch {
                    print("There was an error in decoding data, \(error)")
                }
            }
        }
    }
}

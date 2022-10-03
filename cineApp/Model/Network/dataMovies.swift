//
//  dataMovies.swift
//  cineApp
//
//  Created by Apprenant 16 on 03/10/2022.
//

import Foundation
import SwiftUI

struct Movie: Decodable {
    let movie: [GetMovies]
}

struct GetMovies: Decodable {
    let title: String // Titre du film
    let releaseState: String // Date de sortie
    let image: String // Thumbnail
    let plot: String // Synopsys (ENG)
    let genres: String // Genres
}

func getMovies () async throws -> Movie {
    guard let url = URL(string: "https://imdb-api.com/en/API/InTheaters/k_z73plmjm")
    else {
        fatalError("Missing URL")
    }
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "GET"
    let (data, response) = try await URLSession.shared.data(for: urlRequest)
    guard (response as? HTTPURLResponse)?.statusCode == 200
    else {
        fatalError("Error while fetching data")
    }
    let decoded = try JSONDecoder().decode(Movie.self, from: data)
//    let movie = Movie.movie
    return decoded }

//struct createURL {
//    let somePath = "https://imdb-api.com/en/API/InTheaters/" // endPoint
//    let privID  = "k_z73plmjm"
//    let myOwnPath = somePath + privID
//}

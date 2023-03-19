//
//  HomeViewModel.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 16/03/23.
//

import Foundation

class HomeViewModel : ObservableObject {
    
    //String here is Catogories to which the Movie belongs.
    @Published var movieWithCategory : [String : [MovieModel]] = [:]
    
    public var categories : [String] {
        return movieWithCategory.keys.map({String($0)})
    }
    
    init() {
        setUpMovies()
    }
    
    //This will organise all the movies in the correct categories
    func setUpMovies() {
        movieWithCategory["Trending Now"] = movieArray.shuffled()
        movieWithCategory["Comedy"] = movieArray.shuffled()
        movieWithCategory["Thriller"] = movieArray.shuffled()
        movieWithCategory["Keep Watching"] = movieArray.shuffled()
        movieWithCategory["Sci-Fi"] = movieArray.shuffled()
        movieWithCategory["Drama"] = movieArray.shuffled()
        movieWithCategory["Action"] = movieArray.shuffled()
        movieWithCategory["Romantic"] = movieArray.shuffled()
        movieWithCategory["Amine"] = movieArray.shuffled()
    }
    
    func getMovie(forCat : String) -> [MovieModel] {
        return movieWithCategory[forCat] ?? []
    }
}

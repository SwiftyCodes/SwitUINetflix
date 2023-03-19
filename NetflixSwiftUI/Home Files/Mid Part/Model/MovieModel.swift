//
//  Movie.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 16/03/23.
//

import Foundation

struct MovieModel : Hashable {
    var id : String
    var name : String
    var thumbNailURL : URL
    var categories : [String]
}

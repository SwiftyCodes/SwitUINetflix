//
//  GlobalHelpers.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 16/03/23.
//

import Foundation
import SwiftUI

let topImagePreview = MovieModel(id: UUID().uuidString, name: "VENOM", thumbNailURL: URL(string: "https://picsum.photos/500/600/")!, categories: ["Dystopian","Exciting","Suspense","Sci-Fi TV"])

let exapmleMovie1 = MovieModel(id: UUID().uuidString, name: "VENOM", thumbNailURL: URL(string: "https://picsum.photos/150/200/")!, categories: ["Dystopian","Exciting","Suspense","Sci-Fi TV"])

let exapmleMovie2 = MovieModel(id: UUID().uuidString, name: "DARK", thumbNailURL: URL(string: "https://picsum.photos/150/200")!, categories: ["Dystopian","Exciting","Suspense","Sci-Fi TV"])

let exapmleMovie3 = MovieModel(id: UUID().uuidString, name: "HALLO", thumbNailURL: URL(string: "https://picsum.photos/150/210")!, categories: ["Dystopian","Exciting","Suspense","Sci-Fi TV"])

let exapmleMovie4 = MovieModel(id: UUID().uuidString, name: "TRUTH", thumbNailURL: URL(string: "https://picsum.photos/150/202")!, categories: ["Dystopian","Exciting","Suspense","Sci-Fi TV"])

let exapmleMovie5 = MovieModel(id: UUID().uuidString, name: "MEET DAVE", thumbNailURL: URL(string: "https://picsum.photos/150/203")!, categories: ["Dystopian","Exciting","Suspense","Sci-Fi TV"])

let movieArray = [exapmleMovie1, exapmleMovie2 , exapmleMovie3 , exapmleMovie4 , exapmleMovie5]

let topHeaderTitlesArray = ["TV Shows","Movies","My List"]

//Mark : extenstion LinearGradient
extension LinearGradient {
    static let blackOpacityGradiant = LinearGradient(
        gradient: Gradient(
            colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

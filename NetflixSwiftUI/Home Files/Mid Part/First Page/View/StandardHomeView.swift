//
//  StandardHomeView.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 16/03/23.
//

import SwiftUI
import Kingfisher

struct StandardMovieView: View {
    
    var movie : MovieModel
    var body: some View {
        KFImage(movie.thumbNailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardMovieView(movie: exapmleMovie1)
    }
}

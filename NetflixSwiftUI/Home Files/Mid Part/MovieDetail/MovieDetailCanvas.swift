//
//  MovieDetail.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 19/03/23.
//

import SwiftUI

struct MovieDetailCanvas: View {
    var movie : MovieModel
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        print("Cross button")
                    } label: {
                        Image(systemName: "xmark.circle")
                    }
                    .padding(.trailing, 20.0)
                    .font(.system(size: 28.0))
                }
                
                ScrollView(.vertical , showsIndicators: false) {
                    VStack {
                        StandardMovieView(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInforSubHeadline()
                    }
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetailCanvas_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailCanvas(movie: exapmleMovie2)
    }
}

struct MovieInforSubHeadline: View {
    var movie : MovieModel
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text("2022")
            Text("Rating")
            Text("seasons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6.0)
    }
}

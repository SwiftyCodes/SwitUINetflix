//
//  HomeView.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 16/03/23.
//

import Foundation
import SwiftUI
import Kingfisher

//Basicallly a controller here
struct HomeView : View {
    
    var homeViewModel = HomeViewModel()
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            //Main Stack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    //Top View
                    
                    TopHeaderViewRow()
                    
                    TopMoviePreview(topMovie: topImagePreview)
                        .frame(width: screen.width)
                        .padding(.top, -100.0)
                        .zIndex(-1)
                    
                    //The categories and movies -- Standard Movie View
                    ForEach(homeViewModel.categories, id: \.self) { categoryName in
                        VStack {
                            HStack {
                                Text(categoryName)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                VStack {
                                    LazyHStack {
                                        ForEach(homeViewModel.getMovie(forCat: categoryName), id: \.self) { movieObject in
                                            StandardMovieView(movie: movieObject)
                                                .frame(width:150,height:200)
                                                .padding(.horizontal, 3.0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .foregroundColor(.white)
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct TopHeaderViewRow: View {
    var body: some View {
        HStack {
            Button {
                print("Home Button")
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .frame(width:80.0,height: 50.0)
            }
            
            Spacer()
            ForEach(topHeaderTitlesArray, id: \.self) { topTitles in
                Button {
                    print("Home Button")
                } label: {
                    Spacer()
                    Text(topTitles)
                    Spacer()
                }
                
            }
            .foregroundColor(.white)
            Spacer()
        }
        .padding(.leading, 10.0)
        .padding(.trailing, 30.0)
    }
}

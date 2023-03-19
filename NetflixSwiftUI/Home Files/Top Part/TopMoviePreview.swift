//
//  TopMoviePreview.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 16/03/23.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var topMovie : MovieModel
    var body: some View {
        ZStack {
            KFImage(exapmleMovie3.thumbNailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack{
                    ForEach(topMovie.categories, id: \.self) { categoriesName in
                        HStack {
                            Text(categoriesName)
                                .foregroundColor(.white)
                            if !isCategoryLast(catPassed: categoriesName) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 5.0))
                            }
                        }
                    }
                }
                .font(.footnote)
                .bold()
                .padding(.vertical, 2.0)
                HStack {
                    Spacer()
                    SmallVerticalButton(isOnImage: "checkmark", isOffImage: "plus", titleText: "My List", isOn: true) {
                        print("My List tapped")
                    }
                    Spacer()
                    WhitePlayButton(imageOnButton: "play.fill", sideTitleText: "Play") {
                        print("Play Button Clicked")
                    }.frame(width: 120.0)
                    Spacer()
                    SmallVerticalButton(isOnImage: "info.circle", isOffImage: "info.circle", titleText: "Info", isOn: true) {
                        print("Info tapped")
                    }
                    Spacer()
                }
            }
            .background(LinearGradient.blackOpacityGradiant)
            .padding(.top, 250.0)
        }
    }
}

extension TopMoviePreview {
    func isCategoryLast(catPassed : String) -> Bool {
        let catCount = topMovie.categories.count
        if let index = topMovie.categories.firstIndex(of: catPassed) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(topMovie: exapmleMovie3)
    }
}

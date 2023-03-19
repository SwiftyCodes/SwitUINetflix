//
//  TopHeaderView.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 19/03/23.
//

import SwiftUI

struct TopHeaderView: View {
    
    var netFlixIcon : String
    var titles : String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "netflix_logo")
                .frame(width: 30.0, height: 50.0)
            ForEach(topHeaderTitlesArray, id: \.self) { topTitles in
                Spacer()
                Text(topTitles)
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
                Spacer()
            }
            Spacer()
        }
    }
}

struct TopHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            .edgesIgnoringSafeArea(.all)
            ForEach(topHeaderTitlesArray, id: \.self) { topTitles in
                TopHeaderView(netFlixIcon: "netflix_logo", titles: topTitles)
            }
        }
    }
}

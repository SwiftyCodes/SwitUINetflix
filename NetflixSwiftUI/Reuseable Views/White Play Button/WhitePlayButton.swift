//
//  SwiftUIView.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 19/03/23.
//

import SwiftUI

struct WhitePlayButton: View {
    
    var imageOnButton : String
    var sideTitleText : String
    var action : ()-> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Image(systemName: imageOnButton)
                    .font(.headline)
                Text(sideTitleText)
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 16.0))
                Spacer()
            }
            .padding(.vertical, 6.0)
            .padding(.horizontal, 6.0)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(3.0)
        }
    }
}

struct WhitePlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            WhitePlayButton(imageOnButton: "play.fill", sideTitleText: "Play") {
                //action
                print("Action Recieved")
            }
        }
    }
}

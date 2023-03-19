//
//  SmallVerticalButton.swift
//  NetflixSwiftUI
//
//  Created by Anurag Kashyap on 16/03/23.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var isOnImage : String
    var isOffImage : String
    var titleText : String
    var isOn : Bool
    
    var imageName : String {
        return isOn == true ? "checkmark" : "plus"
    }
    
    var bottomTitleName : String {
        return isOn == true ? "My List" : "Add to List"
    }
    
    var action :() -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: imageName)
                    .padding(2.0)
                Text(bottomTitleName)
                    .foregroundColor(.white)
                    .font(.system(size: 14.0))
                    .bold()
            }.foregroundColor(.white)
        }
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVerticalButton(isOnImage: "checkmark", isOffImage: "plus", titleText: "info", isOn: true) {
                print("Action")
            }
        }
    }
}

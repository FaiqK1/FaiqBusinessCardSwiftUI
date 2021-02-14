//
//  emailButton.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 Faiq Khan. All rights reserved.
//

import SwiftUI

struct emailButtonView: View {
    var buttonText : String
    var buttonimageSystemName : String


    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(Button(action: {
                //code for action
                //launch email:
                let email = "faiqkhan111@gmail.com"
                if let url = URL(string: "mailto:\(email)") {
                  if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url)
                  } else {
                    UIApplication.shared.openURL(url)
                  }
                }
                
            }) {
                HStack {
                    Image(systemName: buttonimageSystemName)
                        .foregroundColor(Color.green)
                    Text(buttonText)
                        .frame(height: 50, alignment: .center)
//                        .foregroundColor(Color.bl)
                }
            })
            .padding()
    }
}

struct emailButton_Previews: PreviewProvider {
    static var previews: some View {
        emailButtonView(buttonText: "test@test.com", buttonimageSystemName: "envelope.fill")
    }
}

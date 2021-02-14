//
//  phoneButton.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 Faiq Khan. All rights reserved.
//

import SwiftUI

struct phoneButtonView: View {
    var buttonText : String
    var buttonimageSystemName : String


    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                Button(action: {
                    //launch phone :
                    print("PLACE PHONE CODE HERE....")
                    buttonTapped()

                }) {
                    HStack {
                        Image(systemName: buttonimageSystemName)
                            .foregroundColor(Color.green)
                        Text(buttonText)
                            .frame(height: 50, alignment: .center)
                            //.frame(maxWidth: .infinity)
                            //.foregroundColor(Color.black)
                    }
                })
            .padding()
        
    }
    
    func buttonTapped() {
        if let url = URL(string: "tel://0123456789") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        //Depreciated....
        //UIApplication.shared.openURL(NSURL(string: "tel://0123456789")! as URL)

    }
}

struct phoneButton_Previews: PreviewProvider {
    static var previews: some View {
        phoneButtonView(buttonText: "07445 368 852", buttonimageSystemName: "phone.fill")
    }
}

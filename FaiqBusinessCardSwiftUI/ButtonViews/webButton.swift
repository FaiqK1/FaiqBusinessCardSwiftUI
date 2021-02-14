//
//  webButton.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 FaiqKhan. All rights reserved.
//

import SwiftUI


struct webButtonView: View {
    var buttonText : String
    var buttonimageSystemName : String
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(Button(action: {
                print("web button tapped")
            
//                UIApplication.shared.open(URL(string: "http://www.faiq.co.uk")! as URL, options: [:], completionHandler: nil)// -- works only on simulator
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

//UIApplication.sharedApplication().openURL(NSURL(string: "http://www.google.com")!)

struct webButton_Previews: PreviewProvider {
    static var previews: some View {
        webButtonView(buttonText: "Test", buttonimageSystemName: "globe")
    }
}





//                UIApplication.shared.open(URL(string: "http://www.faiq.co.uk")! as URL, options: [:], completionHandler: nil)// -- works only on simulator


//                WebView(urlString: "http://www.faiq.co.uk")


//code for action

//                let launcher = launchWebsite()
//                launcher.launchTHESITE()

//launch website:
//              if let website = URL(string: "https://www.faiq.co.uk") {
//                  UIApplication.shared.open(website, options: [:], completionHandler: nil)
//              }

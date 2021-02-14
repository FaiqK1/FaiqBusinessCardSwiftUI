//
//  URLButton.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 14/02/2021.
//  Copyright © 2021 FaiqKhan. All rights reserved.
//

import SwiftUI
import SafariServices 

struct URLButton_CustomContent<Content: View>: View {
    // What to display on the buton/ the link
    var content: Content
    var url: String

    @AppStorage("LinkDestination") var linkDestination = 0

    @State var showSafariView = false

    //Use this to explicitly open the url in Safari. With iOS 14 the user can change the default browser.
    var safariURL: String {
        if url.contains("https://") {
            return url.replacingOccurrences(of: "https://", with: "x-web-search://")
        } else if url.contains("http://") {
            return url.replacingOccurrences(of: "http://", with: "x-web-search://")
        } else {
            return "x-web-search://\(url)"
        }
    }

    @ViewBuilder var body: some View {
        switch linkDestination {
        case 0:
            // A button, that toggles a full screen cover with a SFSafariViewController
            Button(action: {
                showSafariView = true
            }) {
                content.fullScreenCover(isPresented: $showSafariView) {
                    SafariView(url: URL(string: url)!).edgesIgnoringSafeArea(.all)
                }
            }
        case 1:
            // Opens the URL in Safari
            Link(destination: URL(string: safariURL)!) {
                content
            }
        default:
            content
        }
    }
    
}

/*
struct URLButtonView: View {
    var buttonText : String
    var buttonimageSystemName : String
    
    //var content: Content
    var url: String
    @State var showSafariView = true
    
    let web = launchWebsite()
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                
                
                Button(action: {
                    //code for action
                    //launch phone:
                    print("URL Pressed")
                    
//                    self.fullScreenCover(isPresented: $showSafariView) {
//                        SafariView(url: URL(string: url)!).edgesIgnoringSafeArea(.all)
//                    }
                    web.launchTHESITE()
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
struct URLButtonView_Previews: PreviewProvider {
    static var previews: some View {
        URLButtonView(buttonText: "www.faiq.co.uk", buttonimageSystemName: "globe", url: "http://www.faiq.co.uk")
    }
}
*/

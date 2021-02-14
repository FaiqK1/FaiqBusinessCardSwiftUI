//
//  webLinkDetailView.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 FaiqKhan. All rights reserved.
//

import SwiftUI

struct webLinkDetailView: View {
    let urlLink : String?
    var body: some View {
        ZStack {
            Color(red:0.18, green:0.21, blue:0.25)
                .edgesIgnoringSafeArea(.all)
            WebView(urlString: urlLink)
                .frame(height: 600)
            
//            let launcher = launchWebsite()
//            launcher.launchTHESITE()
        }
        
    }
}

struct webLinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        webLinkDetailView(urlLink: "http://www.faiq.co.uk")
    }
}

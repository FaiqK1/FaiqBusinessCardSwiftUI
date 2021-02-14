//
//  WebView.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 FaiqKhan. All rights reserved.
//

import Foundation
import SafariServices
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let urlString : String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString {
            if let urlFinal = URL(string: safeString) {
                let request = URLRequest(url: urlFinal)
                uiView.load(request)
            }
        }
    }
    
    
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "http://www.faiq.co.uk")
    }
}

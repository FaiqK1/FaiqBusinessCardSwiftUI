//
//  launchWebsite.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 FaiqKhan. All rights reserved.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    var url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        let safariView = SFSafariViewController(url: url)
        return safariView
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }
}



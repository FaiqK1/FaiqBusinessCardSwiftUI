//
//  InfoViewLabelExample.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 FaiqKhan. All rights reserved.
//

import SwiftUI

struct InfoViewLabelExample: View {
    var textString : String
    var imageName : String
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color.green)
                Text(textString)
//                    .foregroundColor(.blue)
            })
            .padding()
    }
}
struct InfoViewLabelExample_Previews: PreviewProvider {
    static var previews: some View {
        InfoViewLabelExample(textString: "Test Label", imageName: "info.circle.fill")
    }
}

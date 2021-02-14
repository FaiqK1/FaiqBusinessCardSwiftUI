//
//  ContentView.swift
//  FaiqBusinessCardSwiftUI
//
//  Created by Faiq Khan on 13/10/2019.
//  Copyright © 2019 Faiq Khan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.18, green:0.21, blue:0.25)
                    //            Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    //Spacer(minLength: 10)
                    Image("faiqImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150
                            , height: 150, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    
                    Text("Faiq Khan")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("iOS Developer")
                        .font(.system(size: 20))
                        .foregroundColor(Color.red)
                    
                    Divider()
                    
                    phoneButtonView(buttonText: "Call", buttonimageSystemName: "phone.fill")
                    emailButtonView(buttonText: "Mail", buttonimageSystemName: "envelope.fill")
                    
                    
                    URLButton_CustomContent(
                        content:
                            //SET CONTENT HERE
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .fill(Color.white)
                                .frame(height: 50)
                                .overlay(HStack(content: {
                                    Image(systemName: "globe")
                                        .foregroundColor(Color.green)
                                    Text("Web")
                                })).padding(),
                             //URL HERE
                        url: "http://www.faiq.co.uk")
                    
                    //                Divider()
                    Spacer()
                    
                    Text("   Swift | SwiftUI")
                        .font(.system(size: 15))
                        .foregroundColor(Color.gray)
                        .padding()
                    
                    Spacer()
                    
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

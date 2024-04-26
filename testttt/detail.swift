//
//  detail.swift
//  testttt
//
//  Created by Giventus Marco Victorio Handojo on 25/04/24.
//

import SwiftUI

struct detail: View {
    var body: some View {
           ScrollView {
               VStack(spacing:50) {
                   Image("img") // Replace "yourImage" with the name of your image asset
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 200, height: 200) // Adjust width and height as needed
                   
                   Rectangle()
                       .fill(Color.gray)
                       .frame(width: 150, height: 150) // Adjust width and height as needed
                   
                   VStack {
                       Rectangle()
                           .fill(Color.red)
                           .frame(width: 350, height: 50) // Adjust width and height as needed
                       
                       Rectangle()
                           .fill(Color.blue)
                           .frame(width: 350, height: 50) // Adjust width and height as needed
                       
                       Rectangle()
                           .fill(Color.green)
                           .frame(width: 350, height: 50) // Adjust width and height as needed
                       
                       Rectangle()
                           .fill(Color.white)
                           .frame(width: 350, height: 50) // Adjust width and height as needed
                   }
               }
               .padding()
               .frame(maxWidth: .infinity) // Expand VStack to full width
           }
           .background(
               LinearGradient(gradient: Gradient(colors: [Color.lightOrange, Color.darkOrange]), startPoint: .top, endPoint: .bottom)
                   .edgesIgnoringSafeArea(.all)
           )
       }
}


#Preview {
    detail()
}

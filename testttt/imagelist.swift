//
//  imagelist.swift
//  testttt
//
//  Created by Giventus Marco Victorio Handojo on 25/04/24.
//

import SwiftUI

struct imagelist: View {
    let images = ["img", "img", "img", "img", "img"]
    
    var body: some View {
            NavigationStack {
                ScrollView{
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(0..<images.count, id: \.self) { index in
                            if index % 2 == 0 {
                                HStack(spacing: -20) {
                                    NavigationLink(destination:detail()){
                                        self.imageCell(imageName: self.images[index])
                                    }
                                    if index + 1 < self.images.count {
                                        NavigationLink(destination:detail()){
                                            self.imageCell(imageName: self.images[index + 1])
                                        }
                                      
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
                
                .navigationTitle("History")
                .background(
                            LinearGradient(gradient: Gradient(colors: [Color.lightOrange, Color.darkOrange]), startPoint: .top, endPoint: .bottom)
                                .edgesIgnoringSafeArea(.all)
                        )
            }
            
        }
        
        func imageCell(imageName: String) -> some View {
            return RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0))
                .overlay(
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                )
                .frame(width: 200, height: 200)
                .onTapGesture {
                    // Handle image tap here
                }
        }
}

#Preview {
    imagelist()
}

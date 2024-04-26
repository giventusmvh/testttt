//
//  ContentView.swift
//  testttt
//
//  Created by Giventus Marco Victorio Handojo on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var expandedIndex: Int? = nil
    
    let accordionData = [
        ("Accordion 1 Title", "Accordion 1 Content"),
        ("Accordion 2 Title", "Accordion 2 Content"),
        ("Accordion 3 Title", "Accordion 3 Content"),
        ("Accordion 4 Title", "Accordion 4 Content"),
        ("Accordion 5 Title", "Accordion 5 Contenttt")
    ]
    
    var body: some View {
        VStack {
            ForEach(accordionData.indices, id: \.self) { index in
                AccordionView(title: self.accordionData[index].0,
                              content: self.accordionData[index].1,
                              isExpanded: self.expandedIndex == index,
                              onToggle: {
                                  withAnimation {
                                      self.expandedIndex = (self.expandedIndex == index) ? nil : index
                                  }
                              })
                    .transition(.slide)
            }
        }
    }
}

struct AccordionView: View {
    var title: String
    var content: String
    var isExpanded: Bool
    var onToggle: () -> Void
    
    var body: some View {
        VStack {
            Button(action: {
                self.onToggle()
            }) {
                HStack {
                    Text(title)
                    Spacer()
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                }
                .padding()
            }
            if isExpanded {
                Text(content)
                    .padding()
            }
        }
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
        
    }
}

#Preview {
    ContentView()
}

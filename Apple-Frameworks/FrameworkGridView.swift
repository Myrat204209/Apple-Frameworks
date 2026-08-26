//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Azat Japarov on 26.08.26.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let colums : [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colums){
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework : framework)
                    }
                }
            }.navigationTitle("Frameworks")
                .font(.subheadline)
                .foregroundStyle(.white)
        }
        
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

struct FrameworkTitleView : View {
    
    let framework : Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80,height: 80)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}


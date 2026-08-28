//
//  FrameworkDetailsView.swift
//  Apple-Frameworks
//
//  Created by Azat Japarov on 26.08.26.
//

import SwiftUI

struct FrameworkDetailsView : View {
    let framework : Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack(spacing : 14){
            
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameworkGridTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .fontWeight(.medium)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
            } label : {
//                FrameworkButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundStyle(.yellow)
//            .buttonBorderShape(.capsule)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
                
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}

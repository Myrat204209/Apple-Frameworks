//
//  FrameworkDetailsView.swift
//  Apple-Frameworks
//
//  Created by Azat Japarov on 26.08.26.
//

import SwiftUI

struct FrameworkDetailsView : View {
    let framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack(spacing : 14){
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
        
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .fontWeight(.medium)
                .padding()
            
            Spacer()
            
            FrameworkButton(title: "Learn More").onTapGesture {
                isShowingSafariView = true
            }
                
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}

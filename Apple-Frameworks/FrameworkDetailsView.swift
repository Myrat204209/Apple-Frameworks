//
//  FrameworkDetailsView.swift
//  Apple-Frameworks
//
//  Created by Azat Japarov on 26.08.26.
//

import SwiftUI

struct FrameworkDetailsView : View {
    let framework : Framework
    
    var body: some View {
        VStack(spacing : 14){
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            } label: {
                Text ("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280,height: 50)
                    .background(.red)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
            }
                
        }
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}

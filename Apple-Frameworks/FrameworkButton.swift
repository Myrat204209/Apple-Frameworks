//
//  FrameworkButton.swift
//  Apple-Frameworks
//
//  Created by Azat Japarov on 26.08.26.
//

import SwiftUI

struct FrameworkButton: View {
    var title : String
    
    var body: some View {
        Button{
            
        } label: {
            Text (title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280,height: 50)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 14))
        }
    }
}

#Preview {
    FrameworkButton(title: "Learn More")
        .preferredColorScheme(.dark)
}

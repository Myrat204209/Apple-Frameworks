//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Azat Japarov on 26.08.26.
//

import SwiftUI
internal import Combine

final class FrameworkGridViewModel : ObservableObject {
//    var objectWillChange: ObservableObjectPublisher?
//    
//    var selectedFramework : Framework? {
//        didSet { isShowingDetailView = true }
//    }
//    
//    @Published var isShowingDetailView = false
    
    let columns : [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}

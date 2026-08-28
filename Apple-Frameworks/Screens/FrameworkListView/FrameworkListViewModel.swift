//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Azat Japarov on 26.08.26.
//

import SwiftUI
internal import Combine

final class FrameworkListViewModel : ObservableObject {
    var objectWillChange: ObservableObjectPublisher?
    
    var selectedFramework : Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
}

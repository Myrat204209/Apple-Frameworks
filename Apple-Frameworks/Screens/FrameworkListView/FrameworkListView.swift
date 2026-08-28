
import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkListViewModel()
    
    var body: some View {
        NavigationStack {
            List(){
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink(
                        destination: FrameworkDetailsView(
                            framework: framework,
                            isShowingDetailView: $viewModel.isShowingDetailView
                        )
                    ){
                        FrameworkListTitleView(framework : framework)
                    }
                    
                }
            }
            .navigationTitle("Frameworks")
            
        }
    }
}

#Preview {
    FrameworkListView()
        .preferredColorScheme(.dark)
}

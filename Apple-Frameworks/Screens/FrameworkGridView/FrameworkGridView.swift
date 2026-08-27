
import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework : framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("Frameworks")
                .font(.subheadline)
                .foregroundStyle(.white)
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    FrameworkDetailsView(framework : viewModel.selectedFramework ?? MockData.sampleFramework,
                                         isShowingDetailView: $viewModel.isShowingDetailView)
                }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

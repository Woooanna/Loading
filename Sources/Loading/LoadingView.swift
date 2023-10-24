//
//  SwiftUIView.swift
//
//
//  Created by Yoanna Mareva on 24.10.23.
//

import SwiftUI

struct LoadingView: View {
    @ObservedObject var viewModel: LoadingViewModel
    
    var body: some View {
        Color.clear.ignoresSafeArea()
            .overlay {
                VStack{
                    Rotation()
                    Text(viewModel.message)
                }
            }
    }
}

#Preview {
    LoadingView(viewModel: LoadingViewModel())
}

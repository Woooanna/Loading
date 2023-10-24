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
        Text(viewModel.message)
    }
}

#Preview {
    LoadingView(viewModel: LoadingViewModel())
}

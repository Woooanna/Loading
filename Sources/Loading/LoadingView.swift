//
//  SwiftUIView.swift
//
//
//  Created by Yoanna Mareva on 24.10.23.
//

import SwiftUI

struct ActivityIndicator: View {
    
    @State var viewModel: ActivityIndicatorViewModel
    
    var body: some View {
        Color.black.opacity(0.4)
            .ignoresSafeArea()
            .overlay {
                VStack{
                    Rotation()
                    Text(viewModel.message)
                }
            }
    }
}

public struct LoadingView<Content>: Loader, View where Content: View {
    
    let content: Content
    private var activityIndicator = ActivityIndicator(viewModel: ActivityIndicatorViewModel())
    
    public init(content: Content) {
        self.content = content
      
    }
    
    public var body: some View {
        ZStack {
            content
            activityIndicator
        }
    }
    
    public func load() {
       _ = activityIndicator.opacity(1)
    }
    
    public func load(message: String?, image: Image?) {
        activityIndicator.viewModel = ActivityIndicatorViewModel(message: message, image: image)
       _ = activityIndicator.opacity(1)
    }
    
    public func stop() {
       _ = activityIndicator.opacity(0)
    }
}

#Preview {
    LoadingView<Content>(content: Content())
}

struct Content: View {
    var body: some View {
        Text("This is our BIG BIG CONTENT").foregroundStyle(.red)
    }
}

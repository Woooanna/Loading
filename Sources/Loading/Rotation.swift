//
//  File.swift
//  
//
//  Created by Yoanna Mareva on 24.10.23.
//

import SwiftUI

struct Rotation: View {
    @State private var isRotating = 0.0
 
    var body: some View {
        Image("loading", bundle: .module)
            .rotationEffect(.degrees(isRotating))
            .onAppear {
                withAnimation(.linear(duration: 1)
                        .speed(0.4).repeatForever(autoreverses: false)) {
                    isRotating = 360.0
                }
            }
    }
}

#Preview {
    Rotation()
}

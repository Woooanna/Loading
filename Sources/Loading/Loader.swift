//
//  File.swift
//  
//
//  Created by Yoanna Mareva on 24.10.23.
//

import Foundation
import SwiftUI

protocol Loader {
    func load()
    func load(message: String?, image: Image?)
}

class ActivityIndicator: Loader {
    private var context: any View
    
    init(context: any View) {
        self.context = context
    }
    
    func load() {
        //TO BE implemented
    }
    
    func load(message: String?, image: Image?) {
        //TO BE implemented
    }
}

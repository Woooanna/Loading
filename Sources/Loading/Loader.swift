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
    func stop()
}

//
//  AlertView.swift
//  Presentation
//
//  Created by Jorge Aluizio on 21/04/23.
//

import Foundation

public protocol AlertView {
    func showMessage(viewModel: AlertViewModel)
}

public struct AlertViewModel: Equatable {
    public var title: String
    public  var message: String
    
    public init(title: String, message: String) {
        self.title = title
        self.message = message
    }
}

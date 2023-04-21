//
//  EmailValidator.swift
//  Presentation
//
//  Created by Jorge Aluizio on 21/04/23.
//

import Foundation

public protocol EmailValidator {
    func isValid(email: String) -> Bool
}

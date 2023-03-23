//
//  HttpError.swift
//  Data
//
//  Created by Jorge Aluizio on 22/03/23.
//

import Foundation

public enum HttpError: Error {
    case noConnectivity
    case badRequest
    case serverError
    case unauthorized
    case forbidden
}

//
//  ExtensionHelpers.swift
//  Data
//
//  Created by Jorge Aluizio on 22/03/23.
//

import Foundation

public extension Data {
    func toModel<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
}

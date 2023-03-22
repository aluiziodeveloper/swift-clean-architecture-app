//
//  Model.swift
//  Domain
//
//  Created by Jorge Aluizio on 22/03/23.
//

import Foundation

public protocol Model: Encodable {}

public extension Model {
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}

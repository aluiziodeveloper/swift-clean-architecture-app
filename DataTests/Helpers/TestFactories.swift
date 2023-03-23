//
//  TestFactories.swift
//  DataTests
//
//  Created by Jorge Aluizio on 22/03/23.
//

import Foundation

func makeInvalidData() -> Data {
    return Data("invalid_data".utf8)
}

func makeValidData() -> Data {
    return Data("{\"name\":\"Jorge\"}".utf8)
}

func makeUrl() -> URL {
    return URL(string: "http://localhost.com")!
}

func makeError() -> Error {
    return NSError(domain: "any_error", code: 0)
}

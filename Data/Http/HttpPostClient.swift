//
//  HttpPostClient.swift
//  Data
//
//  Created by Jorge Aluizio on 22/03/23.
//

import Foundation

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?, completion: @escaping (Result<Data, HttpError>) -> Void)
}

//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by Jorge Aluizio on 22/03/23.
//

import Foundation
import Domain

func makeAccountModel() -> AccountModel {
    return AccountModel(id: "any_id", name: "any_name", email: "a@a.com", password: "any_password")
}

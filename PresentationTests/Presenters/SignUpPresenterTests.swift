//
//  PresentationTests.swift
//  PresentationTests
//
//  Created by Jorge Aluizio on 30/03/23.
//

import XCTest
import Presentation

final class SignUpPresenterTests: XCTestCase {
    func test_signUp_should_show_error_message_if_name_is_not_provided() {
        let (sut, alertViewSpy) = makeSut()
        let signUpViewModel = SignUpViewModel(email: "a@a.com", password: "any_password", passwordConfirmation: "any_password")
        sut.signUp(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, AlertViewModel(title: "Erro de validação", message: "O campo Nome é obrigatório"))
    }
    
    func test_signUp_should_show_error_message_if_email_is_not_provided() {
        let (sut, alertViewSpy) = makeSut()
        let signUpViewModel = SignUpViewModel(name: "any_name", password: "any_password", passwordConfirmation: "any_password")
        sut.signUp(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, AlertViewModel(title: "Erro de validação", message: "O campo Email é obrigatório"))
    }
    
    func test_signUp_should_show_error_message_if_password_is_not_provided() {
        let (sut, alertViewSpy) = makeSut()
        let signUpViewModel = SignUpViewModel(name: "any_name", email: "a@a.com", passwordConfirmation: "any_password")
        sut.signUp(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, AlertViewModel(title: "Erro de validação", message: "O campo Senha é obrigatório"))
    }
    
    func test_signUp_should_show_error_message_if_password_confirmation_is_not_provided() {
        let (sut, alertViewSpy) = makeSut()
        let signUpViewModel = SignUpViewModel(name: "any_name", email: "a@a.com", password: "any_password")
        sut.signUp(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, AlertViewModel(title: "Erro de validação", message: "O campo Confirmar Senha é obrigatório"))
    }
    
    func test_signUp_should_show_error_message_if_password_confirmation_not_match() {
        let (sut, alertViewSpy) = makeSut()
        let signUpViewModel = SignUpViewModel(name: "any_name", email: "a@a.com", password: "any_password", passwordConfirmation: "wrong_password")
        sut.signUp(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, AlertViewModel(title: "Erro de validação", message: "Falha ao confirmar senha"))
    }
}

extension SignUpPresenterTests {
    func makeSut() -> (sut: SignUpPresenter, alertViewSpy: AlertViewSpy) {
        let alertViewSpy = AlertViewSpy()
        let sut = SignUpPresenter(alertView: alertViewSpy)
        return (sut, alertViewSpy)
    }
    
    class AlertViewSpy: AlertView {
        var viewModel: AlertViewModel?
        func showMessage(viewModel: AlertViewModel) {
            self.viewModel = viewModel
        }
    }
}

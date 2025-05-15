//
//  SelfValidating01 2.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import Testing

/// Résultat explicite
struct SelfValidating02 {

    @Test(arguments: [
        "martin@domain.com",
    ])
    func validEmailFormat(input: String) throws {
        let emailValidator = EmailValidator()

        #expect(emailValidator.isValidEmail(input), "\(input) should be valid email")
    }

    @Test(arguments: [
        "martin",
        "@domain.com"
    ])
    func invalidEmailFormat(input: String) throws {
        let emailValidator = EmailValidator()

        #expect(!emailValidator.isValidEmail(input), "\(input) should be invalid email")
    }
}

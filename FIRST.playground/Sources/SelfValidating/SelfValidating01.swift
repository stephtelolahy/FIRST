//
//  SelfValidating01.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import Testing

struct SelfValidating01 {

    @Test(arguments: zip([
        "martin@domain.com",
        "martin",
        "domain.com"
    ], [
        true,
        false,
        false
    ]))
    func emailFormat(data: (String, Bool)) throws {
        let emailValidator = EmailValidator()

        #expect(emailValidator.isValidEmail(data.0) == data.1)
    }
}

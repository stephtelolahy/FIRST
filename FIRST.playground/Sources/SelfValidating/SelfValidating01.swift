//
//  SelfValidating01.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import Testing

struct SelfValidating01 {

    @Test(arguments: [
        "user@domain.com": true,
        "user": false,
        "domain.com": false
    ])
    func emailFormat(input: String, output: Bool) throws {
        let emailValidator = EmailValidator()

        #expect(emailValidator.isValidEmail(input) == output)
    }
}

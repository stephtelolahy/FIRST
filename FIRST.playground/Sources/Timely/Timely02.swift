//
//  Timely02.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//

import Testing

/// Pratiquer le TDD
struct TimelyO2 {

    func testCanWithdraw_WhenEnoughBalance() {
        let account = BankAccount(balance: 1000)
        #expect(account.canWithdraw(100))
    }

    func testCannotWithdraw_WhenNotEnoughBalance() {
        let account = BankAccount(balance: 80)
        #expect(!account.canWithdraw(100))
    }

    func testCannotWithdraw_WhenBalanceLessThan100() {
        let account = BankAccount(balance: 1000)
        #expect(!account.canWithdraw(600))
    }
}

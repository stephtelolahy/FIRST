//
//  Timely01.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import Testing

struct TimelyO1 {

    func testCanWithdraw() {
        let account = BankAccount(balance: 500)
        #expect(account.canWithdraw(100))
    }
}

//
//  Isolated02.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//

import XCTest

/// Chaque test crée son propre objet.
/// Eviter un état global qui peut entrainter un effet de bord.
class Isolated02: XCTestCase {

    func testWithdraw_ShouldReduceBalance() {
        let account = BankAccount(balance: 100)
        account.withdraw(amount: 40)
        XCTAssertEqual(account.balance, 60)
    }

    func testDeposit_ShouldIncreaseBalance() {
        let account = BankAccount(balance: 100)
        account.deposit(amount: 50)
        XCTAssertEqual(account.balance, 150)
    }
}

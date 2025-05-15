//
//  Isolated01.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//

import XCTest

class Isolated01: XCTestCase {

    override func setUp() {
        AccountManager.instance.balance = 100
    }

    func testWithdraw_ShouldReduceBalance() {
        AccountManager.instance.withdraw(amount: 40)
        XCTAssertEqual(AccountManager.instance.balance, 60)
    }

    func testDeposit_ShouldIncreaseBalance() {
        AccountManager.instance.deposit(amount: 50)
        XCTAssertEqual(AccountManager.instance.balance, 150)
    }
}

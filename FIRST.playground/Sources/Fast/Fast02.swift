//
//  Fast02.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import XCTest

/// Ne dépend pas de délai inutile.
class Fast02: XCTestCase {
    func testTransferBetweenAccounts_IsFast() {
        let expectation = XCTestExpectation(description: "Account updated")
        let account = BankAccount(balance: 100)

        account.transfer(amount: 30, completion: {
            expectation.fulfill()
        })

        wait(for: [expectation], timeout: 1.0)
        XCTAssertEqual(account.balance, 130)
    }
}

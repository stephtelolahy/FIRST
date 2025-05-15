//
//  Fast.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import XCTest

class Fast01: XCTestCase {
    func testTransferBetweenAccounts_IsSlow() {
        let expectation = XCTestExpectation(description: "Something should happen soon")
        let account = BankAccount(balance: 100)
        account.transfer(amount: 30)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 5.0)
        XCTAssertTrue(account.balance == 130)
    }
}

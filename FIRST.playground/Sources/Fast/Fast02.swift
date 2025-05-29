//
//  Fast02.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import XCTest
import Testing

/// Ne dépend pas de délai inutile.
/// Autres options
/// - Completion
/// - Convertir en sync
/// - Observer un changement d'état
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

struct Fast03 {
    @Test func testTransferBetweenAccounts_IsFast() async {
        let account = BankAccount(balance: 100)

        await confirmation("Something happened") { confirmation in

            account.transfer(amount: 30, completion: {
                confirmation()
            })
        }

        #expect(account.balance == 130)
    }
}

//
//  Repeatable01.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//

import XCTest

class Repeatable01: XCTestCase {
    func testMessageCalculation_WithSystemDate() {
        let sut = MessageManager()
        let message = sut.greetings()

        XCTAssertEqual(message, "Bonjour")
    }
}

//
//  Repeatable02.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//
import XCTest

/// Comportement déterministe en injectant une date exacte
class Repeatable02: XCTestCase {
    func testMessageCalculation_Day() throws {
        let date = try XCTUnwrap(ISO8601DateFormatter().date(from: "2025-05-07T09:26:00Z"))
        let sut = MessageManager(date: date)

        let message = sut.greetings()

        XCTAssertEqual(message, "Bonjour")
    }

    func testMessageCalculation_Night() throws {
        let date = try XCTUnwrap(ISO8601DateFormatter().date(from: "2025-05-07T20:26:00Z"))
        let sut = MessageManager(date: date)

        let message = sut.greetings()

        XCTAssertEqual(message, "Bonsoir")
    }
}

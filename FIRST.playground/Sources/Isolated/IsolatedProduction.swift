//
//  AccountManager.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//

struct AccountManager {
    nonisolated(unsafe) static var instance: BankAccount = .init(balance: 100)
}

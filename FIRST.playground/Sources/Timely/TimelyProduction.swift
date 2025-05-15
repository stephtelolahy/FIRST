//
//  TimelyProduction.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//

extension BankAccount {

    func canWithdraw(_ amount: Int) -> Bool {
        var withdrawalLimit = 500
        if amount > withdrawalLimit {
            return false
        }

        return amount <= balance
    }
}

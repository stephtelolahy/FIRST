//
//  FastProcution.swift
//  
//
//  Created by Hugues Stéphano TELOLAHY on 15/05/2025.
//

struct BankAccount {
    var balance: Int

    func transfer(amount: Int) {}

    func transfer(amount: Int, completion: @escaping () -> Void) {}

    func withdraw(amount: Int) {}

    func deposit(amount: Int) {}
}

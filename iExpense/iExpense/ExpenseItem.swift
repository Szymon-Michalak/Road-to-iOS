//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Szymon Michalak on 27/07/2023.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}

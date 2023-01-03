//
//  ExpenseItem.swift
//  iExpense
//
//  Created by ebpearls on 22/12/2022.
//

import Foundation

struct ExpenseItem: Codable, Identifiable {
    var id = UUID()
    var name: String
    var type: String
    var amount: Double
}

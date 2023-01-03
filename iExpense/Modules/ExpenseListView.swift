//
//  ExpenseListView.swift
//  iExpense
//
//  Created by ebpearls on 22/12/2022.
//

import SwiftUI

struct ExpenseListView: View {
    // MARK: properties
    @StateObject var expenses = Expenses()
    
    @State private var showAddExpense = false
    
    // MARK: body
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            
                            Text(item.type)
                        }
                        
                        Spacer()
                        
                        Text(item.amount, format: .currency(code: "USD"))
                    }
                }
                .onDelete(perform: removeItem)
            }
            .navigationTitle("Expense List")
            .toolbar {
                Button {
                    showAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $showAddExpense) {
            AddExpenseView(expenses: expenses)
        }
    }
    
    // MARK: removeItem
    private func removeItem(at offset: IndexSet) {
        expenses.items.remove(atOffsets: offset)
    }
    
}

struct ExpenseListView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseListView()
    }
}

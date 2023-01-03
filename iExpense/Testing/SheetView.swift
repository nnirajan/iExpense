//
//  SheetView.swift
//  iExpense
//
//  Created by ebpearls on 22/12/2022.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct SheetView: View {
    @State private var showingSheet: Bool = false
    
    var body: some View {
        Button("show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}

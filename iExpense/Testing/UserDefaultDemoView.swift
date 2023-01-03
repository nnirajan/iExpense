//
//  UserDefaultDemoView.swift
//  iExpense
//
//  Created by ebpearls on 22/12/2022.
//

import SwiftUI

struct UserDefaultDemoView: View {
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap count \(tapCount)") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

struct UserDefaultDemoView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultDemoView()
    }
}

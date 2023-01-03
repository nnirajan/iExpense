//
//  ContentView.swift
//  iExpense
//
//  Created by ebpearls on 22/12/2022.
//

import SwiftUI

struct User {
    var firstName = "Nirajan"
    var lastName = "Shrestha"
}

struct ContentView: View {
//    @State private var user = User()
    @State private var user = UserClass()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First Name", text: $user.firstName)
            
            TextField("Last Name", text: $user.lastName)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

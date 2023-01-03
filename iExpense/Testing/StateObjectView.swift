//
//  StateObjectView.swift
//  iExpense
//
//  Created by ebpearls on 22/12/2022.
//

import SwiftUI

class UserClass: ObservableObject {
    @Published var firstName = "Nirajan"
    @Published var lastName = "Shrestha"
}

struct StateObjectView: View {
    @StateObject private var user = UserClass()
    
    /// @StateObject -> create new object
    /// @ObservedObject -> for listening
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First Name", text: $user.firstName)
            
            TextField("Last Name", text: $user.lastName)
        }
        .padding()
    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}

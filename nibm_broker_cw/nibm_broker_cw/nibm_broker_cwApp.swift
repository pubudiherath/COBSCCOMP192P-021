//
//  nibm_broker_cwApp.swift
//  nibm_broker_cw
//
//  Created by PubudiHerath on 4/16/22.
//

import SwiftUI
import Firebase

@main
struct nibm_broker_cwApp: App {
    // initialized the signInViewModel in root for use it globaly
    @StateObject var viewModel = SignInViewModel()
    init(){
        // configuer firebase just after app start
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            
            // set root view as view container
            // every navigation links render inside the navigation-view
            
            NavigationView{
                UserHomeView()
            }
            .environmentObject(viewModel)
        }
    }
}

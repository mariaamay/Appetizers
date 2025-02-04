//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Maria Mayorova on 26.01.2025.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}

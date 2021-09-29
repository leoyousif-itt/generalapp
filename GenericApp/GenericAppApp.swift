//
//  GenericAppApp.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import SwiftUI

@main
struct GenericAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(appView: AppVM())
        }
    }
}

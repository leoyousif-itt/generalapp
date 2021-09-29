//
//  ContentView.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var appVM: AApp
    
    init(appView: AApp){
        self.appVM = appView
    }
    
    var body: some View {
        AppView(appView: appVM)
    }
}

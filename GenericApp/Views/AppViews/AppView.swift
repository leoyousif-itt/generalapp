//
//  AppView.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import SwiftUI

struct AppView: View {
    @ObservedObject var appVM: AApp
    
    init(appView: AApp){
        self.appVM = appView
    }
    
    var body: some View {
        let pageView = PageView(pageVM: appVM.getPageVM())
        pageView
    }
}

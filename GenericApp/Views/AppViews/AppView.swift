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
        VStack(spacing: 0){
            pageView
            HStack{
                Button(action: {
                    appVM.app.changePage(to: .myChart)
                }) {
                    Text("MyChart")
                }
                Spacer()
                Button(action: {
                    appVM.app.changePage(to: .billPay)
                }) {
                    Text("Bill Pay")
                }
            }.padding().background(Color.blue).foregroundColor(Color.white)
        }
        
    }
}

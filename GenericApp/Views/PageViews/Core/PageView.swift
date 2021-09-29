//
//  PageView.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import SwiftUI

struct PageView: View {
    @ObservedObject var pageVM: Page
    
    var body: some View {
        return pageVM.buildPage () {
            if let pageVM = pageVM as? Home {
                HomePage(homePageVM: pageVM)
            }
            else if let pageVM = pageVM as? MyChart {
                MyChartPage(myChartVM: pageVM)
            }
            else if let pageVM = pageVM as? BillPay {
                BillPayPage(billPayVM: pageVM)
            }
        }
    }
}

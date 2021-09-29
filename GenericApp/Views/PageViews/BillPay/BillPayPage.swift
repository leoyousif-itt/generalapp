//
//  BillPayPage.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/29/21.
//

import SwiftUI

struct BillPayPage: View {
    @ObservedObject var billPayVM: BillPay
    
    var body: some View {
        let body =
        GeometryReader { geometry in
            let grid = SectionGrid(itemCount: billPayVM.sectionVMs.count, in: geometry.size)
                ForEach(billPayVM.sectionVMs) { section in
                    SectionView(section: section, geometry: geometry).frame(width: grid.size.width, height: grid.size.height/2, alignment: .center)
                    
                }.frame(width: grid.size.width, height: grid.size.height, alignment: .center)
        }.background(Color.gray)
        
        body
    }
}

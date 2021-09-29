//
//  MyChartPage.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/27/21.
//

import SwiftUI

struct MyChartPage: View {
    @ObservedObject var myChartVM: MyChart
    
    var body: some View {
        let body =
        GeometryReader { geometry in
            let grid = SectionGrid(itemCount: myChartVM.sectionVMs.count, in: geometry.size)
                ForEach(myChartVM.sectionVMs) { section in
                    SectionView(section: section, geometry: geometry).frame(width: grid.size.width, height: grid.size.height/2, alignment: .center)
                    
                }.frame(width: grid.size.width, height: grid.size.height, alignment: .center)
        }.padding(.all, 10.0).background(Color.gray)
        
        body
    }
}

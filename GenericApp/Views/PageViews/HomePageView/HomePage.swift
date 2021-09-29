//
//  HomePage.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import SwiftUI

struct HomePage: View {
    @ObservedObject var homePageVM: Home
    
    var body: some View {
        let body =
        GeometryReader { geometry in
            let grid = SectionGrid(itemCount: homePageVM.sectionVMs.count, in: geometry.size)
            ScrollView {
                    ForEach(homePageVM.sectionVMs) { section in
                        SectionView(section: section, geometry: geometry).frame(width: geometry.size.width, height: geometry.size.height/2, alignment: .center)
                        
                    }
            }.frame(width: grid.size.width, height: grid.size.height, alignment: .center)
        }.background(Color.gray).scaledToFit()
        
        body
    }
}




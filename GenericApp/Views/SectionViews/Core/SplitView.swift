//
//  SplitView.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import SwiftUI

struct SplitView: View {
    var panes: Panes
    @State var geometry: GeometryProxy?
    
    var body: some View {
        
        let splitView = VStack(spacing: .none) {
            HStack() {
                GeometryReader{ subSecGeo in
                    SectionView(section: panes.leftSection, geometry: subSecGeo, isSubSection: true)
                }.padding([.vertical], 10.0)
                GeometryReader{ subSecGeo in
                    SectionView(section: panes.rightSection, geometry: subSecGeo, isSubSection: true)
                }.padding([ .vertical],10.0)
            }
            
        }
        
        if let geo = geometry {
            splitView.frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
        }
        else {
            splitView
        }
    }
}



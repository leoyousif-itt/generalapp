//
//  SectionView.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import SwiftUI

struct SectionView:View {
    var section: ASection
    var geometry: GeometryProxy?
    var isSubSection:Bool = false
    
    var body: some View {
        switch section.sectionDoc.type {
        case .split:
            if let section = section as? ASplitSection {
                SplitView(panes: section.paneVMs, geometry: geometry)
            }
        default: section.buildSection() { sectionContent in
                let sectionView = sectionContent.sectionDoc.content.type.contentFactory(content: sectionContent.sectionDoc.content)
                if let geo = geometry {
                    if isSubSection {
                        let grid = SectionGrid(itemCount: 1, in: geo.size)
                        sectionView.frame(width: grid.itemSize.width, height: grid.itemSize.height, alignment: .center).background(Color.blue)
                    }else {
                        let grid = SectionGrid(itemCount: 1, in: geo.size)
                        sectionView.frame(width: grid.itemSize.width, height: grid.itemSize.height, alignment: .center).background(Color.blue)
                    }
                }
            }
        }
    }
}

struct MyChartView: View {
    var title: String
    
    var body: some View {
        Text(title)
    }
}

@ViewBuilder func myChartViewFactory (content: MyChartDoc) -> some View {
    MyChartView(title: content.title)
}

struct FindAProviderView: View {
    var title: String
    
    var body: some View {
        Text(title)
    }
}

@ViewBuilder func findAProviderFactory (content: FindAProviderDoc) -> some View {
    FindAProviderView(title: content.title)
}




//
//  PSections.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import Foundation
import SwiftUI


protocol PSection: ObservableObject, Identifiable {
//    var sectionDoc: SectionDocument { get set }
}

class ASection: PSection {
    @Published var sectionDoc: SectionDocument
    var id: String = UUID().uuidString
    
    @ViewBuilder func buildSection<Section: View>(@ViewBuilder builder: (ASection) -> Section) -> some View
    {
        builder(self)
    }
    
    init(content: PContent,_ type: ESection? = nil){
        sectionDoc = SectionDocument(content: content, type)
    }
}
typealias Panes = (leftSection: ASection, rightSection:ASection)

class ASplitSection: ASection {
    @Published var splitSectionDoc: SplitSectionDocument
    @Published var paneVMs: Panes = (leftSection: ASection(content: Content(type: .none), .none),rightSection: ASection(content: Content(type: .none), .none))
    
    init(content panes: PaneDocs){
        self.splitSectionDoc = SplitSectionDocument(content: panes)
        
        super.init(content: Content(type: .none, payload: nil), .split)
        
        self.paneVMs = (leftSection: ASection(content: self.splitSectionDoc.panes.leftSection.content, self.splitSectionDoc.panes.leftSection.type), rightSection:ASection(content: self.splitSectionDoc.panes.rightSection.content, self.splitSectionDoc.panes.rightSection.type))
        
    }
}

//
//  PPage.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import Foundation
import SwiftUI

protocol PPage: ObservableObject {
    var pageDocument: PPageDocument { get set }
}

class Page:PPage {
    @Published var pageDocument: PPageDocument
    @Published var sectionVMs: [ASection] = []
    
    @ViewBuilder func buildPage<PageView: View>(@ViewBuilder builder: ([SectionDocument]) -> PageView) -> some View {
        if let sections = self.pageDocument.sections {
            builder(sections)
        }
    }
    
    init(title: String) {
        self.pageDocument = PageDocument(title: title)
        
        if let sections = pageDocument.sections {
            for section in sections {
                switch section.type {
                case .full:
                    self.sectionVMs.append(ASection(content: section.content, section.type))
                case .split:
                    self.sectionVMs.append(ASection(content: section.content, section.type))
                case .half:
                    self.sectionVMs.append(ASection(content: section.content, section.type))
                }
                
            }
        }
    }
}




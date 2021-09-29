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
    
    @ViewBuilder func buildPage<PageView: View>(@ViewBuilder builder: () -> PageView) -> some View {
        builder()
    }
    
    init(title: String, pageDocument: PPageDocument) {
        self.pageDocument = pageDocument
        
        if let sections = pageDocument.sections {
            for section in sections {
                self.sectionVMs.append(ASection(content: section.content, section.type))
            }
        }
    }
}




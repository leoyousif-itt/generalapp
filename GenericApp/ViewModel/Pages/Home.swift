//
//  Home.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import SwiftUI

class Home: Page {
    let webViewDoc = WebViewDoc()
    let aSectionVM = ASection(content: Content(type: .myChart, payload: MyChartDoc()))
    
    
    func aSplitSectionDocument() -> SplitSectionDocument {
        let leftSection = SectionDocument(content: Content(type: .myChart, payload: MyChartDoc()))
        let rightSection = SectionDocument(content: Content(type: .findAProvider, payload: FindAProviderDoc()))
        
        let sectionTouple = (leftSection: leftSection, rightSection: rightSection)

        let splitSectionDocument = SplitSectionDocument(content: sectionTouple)
        return splitSectionDocument
    }
    
    
    init(){
        super.init(title: "Home")
        self.pageDocument.sections = []
        
        let splitSectionDocument = aSplitSectionDocument()
        
        let webViewContent = Content(type: .webView, payload: WebViewDoc())
        let anotherSectionVM = ASection(content: webViewContent)
        
        
        self.sectionVMs.append(aSectionVM)
        self.sectionVMs.append(ASplitSection(content: splitSectionDocument.panes))
        self.sectionVMs.append(aSectionVM)
        self.sectionVMs.append(anotherSectionVM)
        self.sectionVMs.append(ASplitSection(content: splitSectionDocument.panes))
    }
}



//
//  MyChart.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import Foundation

class MyChart: Page {
    let webViewDoc = WebViewDoc()
    let aSectionVM = ASection(content: Content(type: .myChart, payload: MyChartDoc()))
    
    init(){
        super.init(title: "Home")
        self.pageDocument.sections = []
        
        let webViewContent = Content(type: .webView, payload: WebViewDoc())
        let anotherSectionVM = ASection(content: webViewContent)
        
        self.sectionVMs.append(anotherSectionVM)
    }

}

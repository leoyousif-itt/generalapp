//
//  MyChartDocument.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import Foundation

struct MyChartDoc: PPageDocument {
    var title = "My Chart"
    var url: URL? = URL(string: "https://mychart.slhs.org/mychart/Authentication/Login?")
    
    var webVMContent: Content
    var sections: [SectionDocument]? = []
    
    init(){
        self.webVMContent = Content(type: .webView, payload: WebViewDoc(url: url))
        self.sections?.append(SectionDocument(content: webVMContent, .full))
    }
}

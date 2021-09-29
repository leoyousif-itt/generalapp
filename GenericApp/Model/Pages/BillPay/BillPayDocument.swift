//
//  BillPayDocument.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import Foundation

struct BillPayDocument: PPageDocument {
    var title = "Bill Pay"
    var url: URL? = URL(string: "https://www.stlukesbillpay.com/")
    
    var webVMContent: Content
    var sections: [SectionDocument]? = []
    
    init(){
        self.webVMContent = Content(type: .webView, payload: WebViewDoc(url: url))
        self.sections?.append(SectionDocument(content: webVMContent, .full))
    }
}

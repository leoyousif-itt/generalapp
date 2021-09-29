//
//  WebViewDocument.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/27/21.
//

import Foundation

struct WebViewDoc {
    var site: URL? = URL(string: "https://www.stlukesonline.org/")
    init(url: URL? = nil){
        if let url = url {
            self.site = url
        }
    }
}


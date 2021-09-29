//
//  WebView.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/27/21.
//

import SwiftUI
import WebKit

struct WebVM: UIViewRepresentable {
    let webViewDoc: WebViewDoc
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myURL = webViewDoc.site else {
            return
        }
        let request = URLRequest(url:myURL)
        uiView.load(request)
    }
}

//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebVM()
//    }
//}


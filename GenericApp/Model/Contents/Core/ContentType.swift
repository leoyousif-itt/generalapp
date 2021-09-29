//
//  ContentType.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import Foundation
import SwiftUI

enum ContentType {
    case myChart
    case findAProvider
    case billPay
    case webView
    case none
    
    @ViewBuilder func contentFactory (content: PContent) -> some View {
        switch self {
        case .myChart: if let content = content.payload as? MyChartDoc {
            Group {
                myChartViewFactory(content: content)
            }
        }
        case .findAProvider: if let content = content.payload as? FindAProviderDoc {
            Group {
                findAProviderFactory(content: content)
            }
        }
        case .webView: if let content = content.payload as? WebViewDoc {
            Group {
                WebVM(webViewDoc: content)
            }
        }
        default:
            Text("Null")
        }
    }
}

protocol PContent {
    var type: ContentType { get set }
    var payload: Any? { get set }
}

struct Content: PContent {
    var type: ContentType
    var payload: Any?
}


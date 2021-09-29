//
//  PApp.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import Foundation

protocol PApp: ObservableObject {
    var app: PAppDocument { get }
}

class AApp: PApp {
    @Published var app: PAppDocument
    
    init(){
        self.app = AppDocument()
    }
    
    func getPageVM() -> Page {
        switch app.currentPage {
        case .home: return Home()
        case .myChart: return MyChart()
        case .findAProvider: return FindAProvider()
        }
    }
}

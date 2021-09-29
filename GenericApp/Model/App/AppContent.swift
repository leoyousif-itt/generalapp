//
//  File.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/20/21.
//

import Foundation

protocol PAppDocument {
    var currentPage: Pages { get }
    var user: String? { get }
    
    mutating func changePage(to page: Pages) -> Void
}

struct AppDocument: PAppDocument {
    private(set) var currentPage: Pages = .billPay
    private(set) var user: String?
    
    mutating func changePage(to page: Pages) -> Void {
        self.currentPage = page
    }
}


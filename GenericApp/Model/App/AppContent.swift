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
}

struct AppDocument: PAppDocument {
    private(set) var currentPage: Pages = .myChart
    private(set) var user: String?
}


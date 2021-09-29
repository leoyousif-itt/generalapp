//
//  PageDocument.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import Foundation

protocol PPageDocument {
    var title: String { get set }
    var sections: [SectionDocument]? { get set }
}

struct PageDocument: PPageDocument {
    var title: String
    var sections: [SectionDocument]? = []
}

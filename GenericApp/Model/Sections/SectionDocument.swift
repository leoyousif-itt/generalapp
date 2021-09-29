//
//  SectionDocument.swift
//  GenericApp
//
//  Created by Leo Yousif on 9/22/21.
//

import Foundation

enum ESection {
    case half
    case split
    case full
}

protocol PSectionDocument: Identifiable {
//    associatedtype Content
    var content: PContent { get set }
    var id: String { get }
    var name: String { get }
    var type: ESection { get}
    
}

struct SectionDocument:PSectionDocument {
    let id = UUID().uuidString
    var name: String
    var content: PContent
    var type: ESection = .full
    
    init(content: PContent,_ type: ESection? = nil){
        self.content = content
        self.name = "Generic Section"
        
        if let sectionType = type {
            self.type = sectionType
        }
        
    }
}

typealias PaneDocs = (leftSection: SectionDocument, rightSection:SectionDocument)

struct SplitSectionDocument:PSectionDocument {
    let id = UUID().uuidString
    var name: String
    var content: PContent
    private(set) var type: ESection = .split
    
    var panes: PaneDocs
    
    init(content: PaneDocs){
        let emptyContent = Content(type: .none, payload: nil)
        self.name = "Split View"
        self.type = .split
        self.panes = content
        self.content = emptyContent
    }
}

struct HalfSectionDocument: PSectionDocument {
    let id = UUID().uuidString
    var name: String
    var content: PContent
    var type: ESection = .half
    
    init(content: PContent,_ type: ESection? = nil){
        self.content = content
        self.name = "Generic Section"
        
        if let sectionType = type {
            self.type = sectionType
        }
    }
}


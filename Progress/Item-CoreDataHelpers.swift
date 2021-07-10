//
//  Item-CoreDataHelpers.swift
//  Progress
//
//  Created by Анатолий on 10.07.2021.
//

import Foundation

extension Item {
    var itemTitle: String {
        title ?? ""
    }
    
    var itemDetail: String {
        detail ?? ""
    }
    
    var itemCreationDate: Date {
        creationDate ?? Date()
    }
    
    static var example: Item {
        let controller = DataController(inMemory: true)
        let viewContext = controller.container.viewContext
        
        let item = Item(context: viewContext)
        item.title = "Example Title"
        item.detail = "This is example item"
        item.priority = 3
        item.creationDate = Date()
        
        return item
    }
}

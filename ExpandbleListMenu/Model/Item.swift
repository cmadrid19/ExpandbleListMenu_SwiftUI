//
//  Item.swift
//  ExpandbleListMenu
//
//  Created by Maxim Macari on 20/10/2020.
//

import Foundation

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let children: [Item]?
    
    
    
}

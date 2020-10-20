//
//  ItemList.swift
//  ExpandbleListMenu
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct ItemList: View {
    
    let items: [Item]
    
    var body: some View {
        
        List(items, children: \.children){
            Text($0.title)
        }
        
        
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList(items: Item.stubs)
    }
}

extension Item {
    
    static var stubs: [Item] = [
        
        Item(title: "Computers", children: [
            Item(title: "Desktops", children:[
                Item(title: "iMac", children: nil),
                Item(title: "Mac Pro", children: nil),
                Item(title: "Mac mini", children: nil)
            ]),
            Item(title: "Laptops", children:[
                Item(title: "Macbook air", children: nil),
                Item(title: "Macbook Pro", children: nil),
                
            ])
            
        ]),
        Item(title: "Smartphones", children:
             [
                Item(title: "iPhone 11", children: nil),
                Item(title: "iPhone XR", children: nil),
                Item(title: "iPhone XS Max", children: nil),
                Item(title: "iPhone X", children: nil)
             ]),
        Item(title: "Tablets", children:
                [
                    Item(title: "iPad Pro", children: nil),
                    Item(title: "iPad Air", children: nil),
                    Item(title: "iPad Mini", children: nil),
                    Item(title: "Accesories", children:
                            [
                                Item(title: "Magic Keyboard", children: nil),
                                Item(title: "Smart Keyboard", children: nil)
                    ])
        ]),
        Item(title: "Wearables", children: nil),
        
    ]
    
}

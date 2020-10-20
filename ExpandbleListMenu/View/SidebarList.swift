//
//  SidebarList.swift
//  ExpandbleListMenu
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct SidebarList: View {
    
    var items: [Item]
    @State var isModal: Bool = false
    
    var body: some View {
        
        List {
            Label("Home", systemImage: "house")
            
            OutlineGroup(items, children: \.children){
                Text($0.title)
            }
            
            Section(header: Text("Settings")) {
                Label("Account", systemImage: "person.crop.circle")
                Label("Help", systemImage: "person.3")
                Label("Logout", systemImage: "applelogo")
            }
            
        }
        .listStyle(SidebarListStyle())
        
    }
}

struct SidebarList_Previews: PreviewProvider {
    static var previews: some View {
        SidebarList(items: Item.stubs)
    }
}

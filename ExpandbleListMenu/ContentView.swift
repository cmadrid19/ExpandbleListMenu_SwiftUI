//
//  ContentView.swift
//  ExpandbleListMenu
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SidebarList(items: Item.stubs)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  FromList.swift
//  ExpandbleListMenu
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct FormList: View {
    
    @State var isProfileSectionExpanded = true
    
    var body: some View {
        
        Form {
            Section {
                DisclosureGroup(isExpanded: $isProfileSectionExpanded){
                    TextField("First name", text: .constant(""))
                    TextField("Last name", text: .constant(""))
                    TextField("Email", text: .constant(""))
                    DatePicker("Birthdate", selection: .constant(Date()))
                    
                } label: {
                    Text("Personal information")
                }
            }
            
            Section {
                DisclosureGroup{
                    Toggle("Push", isOn: .constant(false))
                    Toggle("SMS", isOn: .constant(true))
                    Toggle("EMail", isOn: .constant(true))
                } label : {
                    Text("Notification preferences")
                }
            }
            
        }
    }
}

struct FormList_Previews: PreviewProvider {
    static var previews: some View {
        FormList()
    }
}

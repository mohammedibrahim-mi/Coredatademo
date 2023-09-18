//
//  AdminPage.swift
//  Coredatademo
//
//  Created by Mohammed Ibrahim on 18/09/23.
//

import SwiftUI

struct AdminPage: View {
    
    
   

    
    @FetchRequest(sortDescriptors: []) var login : FetchedResults<LoginEntity>
    
    var body: some View {
        
        VStack{
            
            Text("Hi")


            List (login) { student in
            Text(student.name ?? "Unknown")
            }

        }.background(Color.red)
        
       
    }
}

struct AdminPage_Previews: PreviewProvider {
    static var previews: some View {
        AdminPage()
    
}
}

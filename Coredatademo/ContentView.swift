//
//  ContentView.swift
//  Coredatademo
//
//  Created by Mohammed Ibrahim on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var login : FetchedResults<LoginEntity>

    
    @State private var name : String = ""
    @State private var password : String = ""
    let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
    let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                TextField("Name ", text: $name)
                    .padding(.all,10)
                Spacer()
                    .frame(height:10)
                TextField("Password ", text: $password)
                    .padding(.all,10)

                
                List (login) { student in
                    
                    VStack{
                        
                        Text(student.name ?? "Unknown")
                            Text(student.password ?? "Unknown")
                        
                    }
     

                }
                Button("Add") {
                    
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                let student = LoginEntity(context: moc)
                student.id = UUID()
                student.name = "\(name)  "
                    student.password = " \(password) "
                    
                    
                try? moc.save()

                
            }.background(Color.white)

            
            
          
         
        }
        
    }                    .padding(.all,10)

}
}

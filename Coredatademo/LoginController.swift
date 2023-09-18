//
//  LoginController.swift
//  Coredatademo
//
//  Created by Mohammed Ibrahim on 18/09/23.
//

import Foundation
import CoreData


class LoginDataController : ObservableObject {
    
    
    let container = NSPersistentContainer(name: "Login")
    
    
    init(){
        
        container.loadPersistentStores{
            
            desc, err in
            
            if let error = err {
                
                print("CoreData error \(error.localizedDescription)")
            }
            
        }
    }
    
}

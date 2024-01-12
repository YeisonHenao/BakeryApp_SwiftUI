//
//  InitialViewViewModel.swift
//  BakeryApp
//
//  Created by Yeison Henao on 11/01/24.
//

import Foundation

class InitialViewViewModel: ObservableObject{
    
    
    init(){
        
    }
    
    func goToHome(){
        print("Hello world!")
        EntryViewViewModel().goToHome()
    }
    
}

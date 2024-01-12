//
//  EntryViewViewModel.swift
//  BakeryApp
//
//  Created by desarrollador3 on 12/01/24.
//

import Foundation

class EntryViewViewModel: ObservableObject {
    
    @Published var showNextView: Bool = false
    
    init() {
        
    }
    
    public func goToHome(){
        print("Press change route")
        self.showNextView.toggle()
    }
    
}

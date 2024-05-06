//
//  EntryViewViewModel.swift
//  BakeryApp
//
//  Created by desarrollador3 on 12/01/24.
//

import Foundation

class EntryViewViewModel: ObservableObject ,EntryViewModelProtocol {
    
    @Published var showNextView: Bool = false
    
    init() {
        
    }
    
    public func goToHome(){
        self.showNextView.toggle()
    }
    
}

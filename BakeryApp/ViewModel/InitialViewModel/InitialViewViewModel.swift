//
//  InitialViewViewModel.swift
//  BakeryApp
//
//  Created by Yeison Henao on 11/01/24.
//

import Foundation

class InitialViewViewModel: ObservableObject ,InitialViewModelProtocol {
    
    @Published var isHome: Bool = false
    
    
    init(){
        
    }
    
    public func userGoToHome(){
        self.isHome.toggle()
    }
    
    public var isInHome: Bool {
        return isHome
    }
    
}

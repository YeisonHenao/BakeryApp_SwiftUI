//
//  EntryView.swift
//  BakeryApp
//
//  Created by desarrollador3 on 12/01/24.
//

import Foundation
import SwiftUI

struct EntryView: View {
    
    @StateObject var viewModel = EntryViewViewModel()
    
    var body: some View {
        
        if(viewModel.showNextView){
            HomeView(viewModel: HomeViewModel())
        }else{
            InitialView()
        }
        
    }
}

#Preview {
    EntryView()
}

//
//  ImageCollageComponent.swift
//  BakeryApp
//
//  Created by Yeison Henao on 12/01/24.
//

import Foundation
import SwiftUI

struct ImageCollageComponent: View {
    var body: some View {
        HStack{
            VStack{
             
                Image("logo")
                    .resizable()
                    .frame(width: 120,height: 120)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8.0)
                    .blur(radius: 2.0)
                Image("logo")
                    .resizable()
                    .frame(width: 120,height: 120)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8.0)
            }
            .offset(CGSize(width: 0, height: 60.0))
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 120,height: 120)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8.0)
                Image("logo")
                    .resizable()
                    .frame(width: 120,height: 120)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8.0)
                    .blur(radius: 2.0)
            }
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 120,height: 120)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8.0)
                    .blur(radius: 2.0)
                Image("logo")
                    .resizable()
                    .frame(width: 120,height: 120)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8.0)
                
            }
            .offset(CGSize(width: 0, height: -60.0))
            
        }
    }
}

#Preview {
    ImageCollageComponent()
}

//
//  View2.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct View2: View {
    
    @StateObject var accVM = AccountViewModel()
    
    var body: some View {
        
        GeometryReader{
            geometry in
        
        VStack{
            
            HStack{
                Spacer()
                Text(accVM.name)
                Spacer()
                Text("\(accVM.age)")
                Spacer()
                Text("\(accVM.weight) kg")
                Spacer()
                Text("\(accVM.height, specifier: "%.2f") m")
                Spacer()
                Text(accVM.gender ? "Hombre" : "Mujer")
                Spacer()
            }
            
            Divider()
            
            ZStack{
                HStack{
                    VStack{
                        Text("Primary")
                        
                        ZStack{
                            Rectangle()
                                .frame(width: geometry.size.width / 3.15, height: geometry.size.width / 3.15)
                                .cornerRadius(15)
                                .foregroundColor(Color.primary)
                            Rectangle()
                                .stroke(Color.red, lineWidth: 2)
                                .frame(width: 125, height: 125)
                        }
                
                    }
                    
                    VStack{
                        Text("Secondary")
                        Rectangle()
                            .frame(width: 125, height: 125)
                            .cornerRadius(15)
                            .foregroundColor(Color.secondary)
                    }
                    
                    VStack{
                        Text("Accent Color")
                        Rectangle()
                            .frame(width: 125, height: 125)
                            .cornerRadius(15)
                            .foregroundColor(Color.accentColor)
                    }
                }
            }
        }
    }
    }
}


struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
        
        View2()
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.dark)
    }
}

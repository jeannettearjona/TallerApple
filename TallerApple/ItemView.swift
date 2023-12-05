//
//  ItemView.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct ItemView: View {
    
    let item : ItemModel

    
    var body: some View {
        Image(item.nombreImagen)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .frame(width: 200, height:200)
            .overlay(alignment: .topLeading, content: {
                Text(item.titulo)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding([.top, .leading], 10.0)
            })
            .padding()
    }
}

#Preview {
    ItemView(item: ItemModel.defaultItem)
}

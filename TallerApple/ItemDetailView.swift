//
//  ItemDetailView.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct ItemDetailView: View {
    let item : ItemModel

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{

            Image(item.nombreImagen)
                .resizable()
                .scaledToFit()
                .frame(width:250)
                .clipShape(Circle())
                .shadow(radius: 7)
                .offset(y:-50)
            VStack{
                Text(item.titulo)
                    .font(.title)
                    .foregroundColor(.blue)
                    .offset(y:-20)
                
                Text(item.descripcion)
                    .multilineTextAlignment(.center)
                    .padding()
                
                /*Link(destination: URL(string: maravilla.urlVideo)!, label: {
                    Label("Video", systemImage: "play.tv.fill")
                })*/
                Spacer()
            }
        }
    }
}



#Preview {
    ItemDetailView(item : ItemModel.defaultItem)
}

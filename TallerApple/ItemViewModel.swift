//
//  ItemViewModel.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import Foundation
import SwiftUI

class ItemViewModel : ObservableObject {
    
    @Published var arrItems = [ItemModel]()
    
    init(){
        getItems()
    }
    
    
    func getItems() {
        
        var item : ItemModel
        
        
        item = ItemModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "default")
        arrItems.append(item)
        
        item = ItemModel(titulo: "Taj Mahal ", descripcion: "En su lecho de muerte, la esposa favorita del rey Shah Jhan, le pidió que le construyera un monumento único en el mundo. En la construcción del Taj Mahal participaron 20 mil obreros. ", nombreImagen: "default")
        arrItems.append(item)
        
        item = ItemModel(titulo: "Coliseo Romano ", descripcion: "La construcción del Coliseo inició en el 71 d.C., y su propósito era albergar juegos de gladiadores, batallas navales y lucha con animales.", nombreImagen: "default")
        arrItems.append(item)
        
    }
    
}

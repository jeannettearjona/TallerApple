//
//  ItemModel.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import Foundation

struct ItemModel : Identifiable {
    var id = UUID()
    var titulo : String
    var descripcion : String
    var nombreImagen :String
}

extension ItemModel {
    
    public static var defaultItem = ItemModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "ChichenItza")
}

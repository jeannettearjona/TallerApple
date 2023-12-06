//
//  ItemView.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct MovieItemView: View {
    
    let movie : MovieModel

    
    var body: some View {
        Image(movie.nombreImagen ?? "")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .frame(width: 200, height:300)
            .padding()
    }
}

#Preview {
    MovieItemView(movie: MovieModel.defaultMovie)
}

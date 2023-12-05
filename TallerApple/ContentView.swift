//
//  ContentView.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var itemVM = ItemViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 300, height: 100)
                        .cornerRadius(10)
                        .overlay(content: {
                            Text("Titulo1")
                        })
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 300, height: 100)
                        .cornerRadius(10)
                        .overlay(alignment: .topLeading ,content: {
                            Text("Titulo1")
                                .padding()
                        })
                        .padding()
                    ScrollView (.horizontal){
                        HStack {
                            /*Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)*/
                            ForEach(itemVM.arrItems) { item in
                                NavigationLink(destination: ItemDetailView(item: item),
                                               label: { ItemView(item: item)})
                            }
                        }//HStack
                        .padding()
                    }
                    
                }//VStack
                .padding()
            }//ScrollView
            .navigationTitle("Un titulo")
        }//NavigationView
    }
}

#Preview {
    ContentView()
}

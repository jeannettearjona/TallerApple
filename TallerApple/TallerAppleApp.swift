//
//  TallerAppleApp.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

@main
struct TallerAppleApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            TabView{
                ContentView()
                //.environmentObject(cartVM)
                .tabItem{
                    Image(systemName: "house.fill")
                }
                View2()
                //.environmentObject(cartVM)
                .tabItem{
                    Image(systemName: "person.fill")
                }

            }
        }
    }
}

//
//  MainView.swift
//  BJ
//
//  Created by David Onica on 21.09.2023.
//

import SwiftUI

struct MainView: View {
    @State var showSymbols = true
    var body: some View {
        TabView{
           
            ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                        
                    }
                    Text("Search")
                        .tabItem {
                            Label("Search", systemImage: "magnifyingglass")
                        }
                    Text("Notification")
                        .tabItem {
                            Label("Notification", systemImage: "bell")
                        }
                    Text("Settings")
                        .tabItem {
                            Label("Settings", systemImage: "gearshape")
                        }
                    
                }
                .toolbarColorScheme(.light, for: .tabBar)

            }
                    }
            
           

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

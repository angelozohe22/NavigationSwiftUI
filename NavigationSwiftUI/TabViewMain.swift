//
//  TabViewMain.swift
//  NavigationSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 4/02/23.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            SecondView().tabItem {
                Label("Add", systemImage: "plus")
            }
            ThirdView().tabItem {
                Label("Camera", systemImage: "camera")
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMain()
    }
}

//
//  SecondView.swift
//  NavigationSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 4/02/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.brown.edgesIgnoringSafeArea(.all)
            VStack {
                NavigationLink {
                    ThirdView()
                } label: {
                    Text("Ir a la tercera vista")
                }

            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

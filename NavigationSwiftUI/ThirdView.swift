//
//  ThirdView.swift
//  NavigationSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 4/02/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Estas en la tercera vista")
                    .foregroundColor(.red)
                    .font(.title)
                    .bold()
            }
        }.navigationTitle("Tercera vista")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

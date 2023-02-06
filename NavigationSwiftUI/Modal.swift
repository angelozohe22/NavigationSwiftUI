//
//  Modal.swift
//  NavigationSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 4/02/23.
//

import SwiftUI

struct Modal: View {
    
    @Environment(\.presentationMode) var backAction
    
    let title: String
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                Image(systemName: "pencil")
                    .foregroundColor(.white)
                Text(title)
                    .foregroundColor(.white)
                    .font(.title)
                Button {
                    backAction.wrappedValue.dismiss()
                } label: {
                    Text("Cerrar")
                }
            }
        }
    }
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        Modal(title: "Hola")
    }
}

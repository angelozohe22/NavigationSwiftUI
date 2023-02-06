//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 4/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal: Bool = false
    @State private var text: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.edgesIgnoringSafeArea(.all)
                VStack(spacing: 16) {
                    
                    TextField("Escribe un texto", text: $text)
                        .padding(.all)
                    
                    NavigationLink {
                        SecondView()
                    } label: {
                        Text("Ir a la siguiente vista")
                            .foregroundColor(.red)
                            .font(.title2)
                            .bold()
                    }

                    Button {
                        showModal.toggle()
                    } label: {
                        Text("Abrir modal")
                            .font(.title2)
                            .foregroundColor(.white)
                    }.sheet(isPresented: $showModal) {
                        Modal(title: text)
                    }
                }
            }
            .navigationTitle("Primera vista")
            .toolbar {
                HStack {
                    
                    NavigationLink {
                        SecondView()
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                    }
                    
                    NavigationLink {
                        ThirdView()
                    } label: {
                        Image(systemName: "camera")
                            .foregroundColor(Color.white)
                    }

                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

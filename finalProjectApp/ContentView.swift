//
//  ContentView.swift
//  finalProjectApp
//
//  Created by Cindy Lu on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        
        ZStack {
            NavigationStack{
                VStack {
                    Text(textTitle)
                        .font(.title)
                    TextField("Type Name Here...", text: $name)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color.gray, width: 1)
                    Button("Submit Name"){
                        textTitle = "Welcome, \(name) <3"
                    }
                    .foregroundColor(.white)
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    
                }.padding()
            }
        }
    }
            
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


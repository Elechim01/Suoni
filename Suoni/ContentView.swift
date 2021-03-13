               //
//  ContentView.swift
//  Suoni
//
//  Created by Michele Manniello on 13/03/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var conversione : Conversione = Conversione()
    var body: some View {
        VStack {
            Text("Suoni")
                .font(.system(size: 30))
                .padding()
            List(conversione.libreria ,id: \.id){value in
                VStack(alignment: .leading){
                    Text("categoria:\(value.category) nome: \(value.fileName)")
                        .padding()
                    Button(action: {
                        let systemsound : SystemSoundID = UInt32(value.iD!)
                        AudioServicesPlaySystemSound(systemsound)
                    }, label: {
                        Text("suono : \(value.iD)")
                            .foregroundColor(.blue)
                    })
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

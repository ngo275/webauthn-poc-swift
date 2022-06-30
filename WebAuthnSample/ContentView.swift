//
//  ContentView.swift
//  WebAuthnSample
//
//  Created by Shu on 2022/06/22.
//

import SwiftUI


struct ContentView: View {
    @State var showSafari = false
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .sheet(isPresented: $showSafari) {
                SafariView(url: Consts.url)
//                WebView(url: Consts.url)
            }
            .onAppear {
                showSafari.toggle()
            }

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

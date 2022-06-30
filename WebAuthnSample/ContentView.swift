//
//  ContentView.swift
//  WebAuthnSample
//
//  Created by Shu on 2022/06/22.
//

import SwiftUI
import BetterSafariView

struct ContentView: View {
   
    @State private var presentingSafariView = false
    @State private var presentingWKWebView = false
    @State private var startingWebAuthenticationSession = false
    
    var body: some View {
        
        VStack(spacing: 16) {
            Button(action: {
                self.presentingSafariView.toggle()
            }) {
                Text("Start SafariView")
            }
            .safariView(isPresented: $presentingSafariView) {
                SafariView(
                    url: Consts.url,
                    configuration: SafariView.Configuration(
                        entersReaderIfAvailable: false,
                        barCollapsingEnabled: true
                    )
                )
                .preferredBarAccentColor(.clear)
                .preferredControlAccentColor(.accentColor)
                .dismissButtonStyle(.done)
            }
            
            Button(action: {
                presentingWKWebView.toggle()
            }) {
                Text("Start WKWebView")
            }
            
            Button(action: {
                self.startingWebAuthenticationSession.toggle()
            }) {
                Text("Start WebAuthenticationSession")
            }
            .webAuthenticationSession(isPresented: $startingWebAuthenticationSession) {
                WebAuthenticationSession(
                    url: Consts.url,
                    callbackURLScheme: "github"
                ) { callbackURL, error in
                    print(callbackURL, error)
                }
                .prefersEphemeralWebBrowserSession(false)
            }
            
        }
        .sheet(isPresented: $presentingWKWebView) {
            WebView(url: Consts.url)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

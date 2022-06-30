//
//  WebView.swift
//  WebAuthnSample
//
//  Created by Shu on 2022/06/30.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: Consts.url)
    }
}

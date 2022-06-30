//
//  SafariView.swift
//  WebAuthnSample
//
//  Created by Shu on 2022/06/22.
//

import SwiftUI
import SafariServices

struct Consts {
    static let url = URL(string: "https://web-authn-nextjs.vercel.app/")!
}

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {

    }

}
struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView(url: URL(string: "")!)
    }
}

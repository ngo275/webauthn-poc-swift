# WebAuthn PoC on Swift

This repository is a PoC of WebAuthn.

This PoC uses the following web app.

:link: https://web-authn-nextjs.vercel.app/

The web app source code is [here](https://github.com/ngo275/WebAuthnNextjs).


## What to test

- [x] SFSafariView can share the key pair with Safari app in the same device
  - Works well :white_check_mark:
- [x] The web app rendered on a laptop Safari can use the iPhone (with the same Apple ID) as an authenticator (_Passkeys_)
  - Didn't work well for some reason :confused:
- [x] WKWebView cannot use WebAuthn
  - WKWebView is not compatible with WebAuthn

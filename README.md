# ZERO — unsigned iOS IPA builder

This repository builds ZERO for **physical iOS devices** using a GitHub-hosted macOS runner and Xcode. The output is an **unsigned IPA**, not a signed/install-ready app.

## Build
1. Upload the full folder contents to a GitHub repository, including the hidden `.github/workflows/build.yml` file and the `ZERO` folder.
2. Open the repository's **Actions** tab.
3. Select **Build unsigned IPA** and choose **Run workflow**.
4. When the run succeeds, open that run and download the `ZERO-unsigned-ipa` artifact.
5. Unzip the downloaded artifact to get `ZERO.ipa`.
6. Sign the IPA with a compatible signing/sideloading tool before installing it. An unsigned IPA cannot normally be installed directly.

## Notes
- The bundle identifier is `com.zero.editor`.
- The app loads `ZERO/index.html` locally in a WKWebView. The HTML currently references Three.js scripts from public CDNs, so those 3D features need internet access.
- This workflow does not include Apple signing certificates or credentials.

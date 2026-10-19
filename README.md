# ZERO – unsigned IPA builder

No Mac needed:
1. Create a new GitHub repo (private is fine) and upload everything in this folder
   (including the hidden .github folder).
2. Go to Actions > "Build unsigned IPA" > Run workflow.
3. When it finishes, download the "ZERO-ipa" artifact, unzip it, and you have ZERO.ipa (unsigned).
4. Sideload with AltStore / Sideloadly / TrollStore etc.

On a Mac instead: `brew install xcodegen && xcodegen generate`, open ZERO.xcodeproj,
or run the same xcodebuild + zip commands from the workflow file.

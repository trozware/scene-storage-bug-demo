# SceneStorage bug demo

In a SwiftUI macOS app, running on an M1 MacBook, @SceneStorage does not work. Neither does the storage and re-opening of multiple windows.

I've filed FB10021846 with the following steps to reproduce:

- Create a macOS app project in Xcode on a M1 MacBook. Set it to use SwiftUI & Swift.
- Add a @SceneStorage property to ContentView.swift
- Add a UI element to change it e.g. a Toggle to change a Boolean.
- Run the app and change the setting.
- Quit the app and re-run - the setting change was not stored.
- Open a second window on the app.
- Quit the app and re-run - only the window that was active at quit is re-opened.

- Do the exact same on an M1 iMac and it works perfectly.
- @AppStorage works as expected on both M1 MacBooks and M1 iMacs.

This behaviour is reproducible whether running from Xcode or from a built app.
Disabling the app sandbox makes no difference.

If anyone with an Intel MacBook could confirm whether it is only an M1 problem, I'd love to hear.
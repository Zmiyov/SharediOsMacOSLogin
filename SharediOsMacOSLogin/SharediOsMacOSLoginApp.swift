//
//  SharediOsMacOSLoginApp.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import SwiftUI

@main
struct SharediOsMacOSLoginApp: App {
    var body: some Scene {
        #if os(iOS)
        WindowGroup {
            ContentView()
        }
        #else
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        #endif
    }
}

#if !os(iOS)

extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get{.none}
        set{}
    }
}
#endif

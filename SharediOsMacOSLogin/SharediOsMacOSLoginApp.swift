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
        WindowGroup {
            ContentView()
        }
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

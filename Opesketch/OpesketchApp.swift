//
//  OpesketchApp.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/11.
//

import SwiftUI

@main
struct OpesketchApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(canvasColor: .white, animImage: Image(systemName: "pawprint.fill").font(.system(size: 60)).foregroundColor(.black) as! Image)
        }
    }
}

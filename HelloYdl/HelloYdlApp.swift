//
//  HelloYdlApp.swift
//  HelloYdl
//
//  Created by Changbeom Ahn on 2022/08/02.
//

import SwiftUI
import YoutubeDL
import PythonSupport

@main
struct HelloYdlApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        PythonSupport.initialize()
        YoutubeDL.downloadPythonModule { error in
            guard error == nil else { fatalError() }
            let ydl = try? YoutubeDL()
            print(ydl?.version)
        }
    }
}

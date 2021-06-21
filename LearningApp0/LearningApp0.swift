//
//  LearningApp0App.swift
//  LearningApp0
//
//  Created by cloud_vfx on 21/06/21.
//

import SwiftUI

@main
struct LearningApp0: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}

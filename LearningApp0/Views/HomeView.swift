//
//  ContentView.swift
//  LearningApp0
//
//  Created by cloud_vfx on 21/06/21.
//

import SwiftUI

struct HomeView: View {
    
  @EnvironmentObject var model: ContentModel

    var body: some View {
        
        Text("Hello, world!")
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

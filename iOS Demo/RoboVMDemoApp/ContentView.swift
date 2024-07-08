//
//  ContentView.swift
//  RoboVMDemoApp
//
//  Created by Tarlan Ismayilsoy on 18.06.24.
//

import SwiftUI
import MyFramework // <- Importing the Java framework

struct ContentView: View {
    @State private var someText = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "cup.and.saucer.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(someText)
        }
        .padding()
        .onAppear {
            // Calling the Java method
            someText = DemoClass.hello() ?? someText
        }
    }
}

#Preview {
    ContentView()
}

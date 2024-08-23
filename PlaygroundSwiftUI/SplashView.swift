//
//  ContentView.swift
//  PlaygroundSwiftUI
//
//  Created by Prana dhika on 01/08/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image("img_logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    SplashView()
}

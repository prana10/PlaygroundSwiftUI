//
//  LoginEmailView.swift
//  PlaygroundSwiftUI
//
//  Created by Prana dhika on 02/08/24.
//

import SwiftUI

struct LoginEmailView: View {
    @State var ispressed: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24, content: {
            Image("img_ilustration_login_email")
                .resizable()
                .aspectRatio(contentMode: .fit)
            input
            button
            quotes
            Spacer()
        }).ignoresSafeArea()
    }
    
    var input: some View {
        VStack {
            HStack {
                Image("ic_email")
                    .frame(width: 16, height: 16)
                    .padding(.trailing, 4)
                TextField("Masukan Email Address", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 1)
            )
            
        }.padding(.horizontal, 24)
    }
    
    var button: some View {
        Button(action: {
            ispressed.toggle()
        }, label: {
            Text("Login")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
            }
        )
        .buttonStyle(CustomButtonConfiguration())
        .padding(.horizontal, 24)
    }
    
    
    var quotes: some View {
        Text("Platform Pembelajaran Ilmu kedokteran dan Kesehatan Pertama di Indonesia")
            .font(.system(size: 14))
            .padding(.horizontal, 24)
            .multilineTextAlignment(.center)
    }
}


struct CustomButtonConfiguration: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 16)
            .padding(.vertical, 6)
            .background(.yellow)
            .cornerRadius(24)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

#Preview {
    LoginEmailView()
}

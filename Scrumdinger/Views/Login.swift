//
//  Login.swift
//  Scrumdinger
//
//  Created by Pawel on 24/03/2024.
//

import SwiftUI

struct Login: View {
    @EnvironmentObject var appState: AppState
    
    @State var username = ""
    @State var password = ""
    @State var rememberPassword = false
    @FocusState var isNameFocused: Bool
    @FocusState var isPasswordFocused: Bool
    
    var body: some View {
        VStack {
            
            Text("Login").font(.title).bold()
                .padding()
            TextField("Name", text: $username)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 340, minHeight: 32)
                .opacity(0.6)
                .focused($isNameFocused)
                .padding(4)
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 340, minHeight: 32)
                .opacity(0.6)
                .focused($isPasswordFocused)
                .padding(4)
            Toggle(isOn: $rememberPassword) {
                Text("Remember password?")
            }
            .textFieldStyle(.roundedBorder)
            .frame(maxWidth: 340, minHeight: 32)
            .padding(4)
            Spacer()
            
            Button {
                appState.isLoggedIn = true
            } label: {
                Text("Login")
                    .foregroundColor(.black)
                    .bold()
                    .frame(maxWidth: 300, minHeight: 32)
                    .background(.orange)
                    .cornerRadius(10)
            }
            Button {
                
            } label: {
                Text("I forgot password")
                    .foregroundStyle(.orange)
                    .bold()
                    .frame(maxWidth: 300, minHeight: 32)
                    .cornerRadius(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange)
                    }
            }
        }.background(Image("gradient-background").resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 900))
    }
}

#Preview {
    Login()
}

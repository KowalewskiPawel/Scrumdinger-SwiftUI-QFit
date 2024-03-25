//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Pawel on 23/02/2024.
//

import SwiftUI


struct MainIntroView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to FitBet").font(.title)
                    .bold()
                Text("Your Personal Trainer powered by AI")
                Spacer()
                NavigationLink {
                    RegisterOne()
                } label: {
                    Text("Get started")
                        .foregroundColor(.black)
                        .bold()
                        .frame(maxWidth: 300, minHeight: 32)
                        .background(.orange)
                        .cornerRadius(10)
                }
                
                NavigationLink {
                    Login()
                } label: {
                    Text("I already have an account")
                        .foregroundStyle(.orange)
                        .bold()
                        .frame(maxWidth: 300, minHeight: 32)
                        .cornerRadius(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.orange)
                        }
                }
                
            }
            .background(Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 600)
                .contrast(1.2)
            )
        }
    }
}

#Preview {
    MainIntroView()
        .environmentObject(AppState(isLoggedIn: false))
}

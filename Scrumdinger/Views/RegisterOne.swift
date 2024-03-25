//
//  RegisterOne.swift
//  Scrumdinger
//
//  Created by Pawel on 23/03/2024.
//

import SwiftUI

struct RegisterOne: View {
    
    var body: some View {
        VStack {
            ProgressView(value: 0.2)
                .tint(.orange)
                
                
            Text("What gender describes you best?").font(.title).bold()
                .padding()
            NavigationLink {
                        RegisterTwo()
                    } label: {
                        Text("Male")
                            .foregroundColor(.white)
                            .bold()
                            .frame(maxWidth: 340, minHeight: 32)
                            .background(.white.opacity(0.1))
                            .cornerRadius(10)
                            
                    }.padding(10)
            NavigationLink {
                        RegisterTwo()
                    } label: {
                        Text("Female")
                            .foregroundColor(.white)
                            .bold()
                            .frame(maxWidth: 340, minHeight: 32)
                            .background(.white.opacity(0.1))
                            .cornerRadius(10)
                            
                            
                            
                    }
            Spacer()
        }.background(Image("gradient-background").resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 900))
    }
}

#Preview {
    RegisterOne()
}

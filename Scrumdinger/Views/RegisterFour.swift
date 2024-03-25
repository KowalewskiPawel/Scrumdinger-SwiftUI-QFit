//
//  RegisterFour.swift
//  Scrumdinger
//
//  Created by Pawel on 24/03/2024.
//

import SwiftUI

struct RegisterFour: View {
    @EnvironmentObject var appState: AppState
    
    @State var name = ""
    @State var age = 25
    @State var height = 180
    @State var weight = 80
    
    var body: some View {
        VStack {
            ProgressView(value: 0.85)
                .tint(.orange)
                
            Text("Tell us a bit more about yourself").font(.title).bold()
                .padding()
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 340, minHeight: 32)
                .opacity(0.6)
                .padding(4)
            Text("Age").bold()
                .padding(4)
            Picker(selection: $age, label: Text("Age")) {
                ForEach(1...100, id: \.self) { number in
                    Text("\(number)").tag(number)
                    }
            }.pickerStyle(.wheel)
                .frame(maxHeight: 80)
            Text("Height").bold()
                .padding(4)
            Picker(selection: $height, label: Text("Height")) {
                ForEach(100...240, id: \.self) { number in
                    Text("\(number)").tag(number)
                    }
            }.pickerStyle(.wheel)
                .frame(maxHeight: 80)
            Text("Weight").bold()
                .padding(4)
            Picker(selection: $weight, label: Text("Weight")) {
                ForEach(40...200, id: \.self) { number in
                    Text("\(number)").tag(number)
                    }
            }.pickerStyle(.wheel)
                .frame(maxHeight: 80)
            Spacer()
            Button {
                appState.isLoggedIn = true
            } label: {
                Text("Continue")
                    .foregroundColor(.black)
                    .bold()
                    .frame(maxWidth: 300, minHeight: 32)
                    .background(.orange)
                    .cornerRadius(10)
            }
        }.background(Image("gradient-background").resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 900))
    }
}

#Preview {
    RegisterFour()
}

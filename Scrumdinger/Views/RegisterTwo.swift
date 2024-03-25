//
//  RegisterTwo.swift
//  Scrumdinger
//
//  Created by Pawel on 24/03/2024.
//

import SwiftUI

struct Goal : Identifiable {
    var goal : String
    var id = UUID()
}

struct RegisterTwo: View {
    var aimGoals = [Goal(goal: "Lose weight"), Goal(goal: "Stay active & Healthy"), Goal(goal: "Maintain my physique"), Goal(goal: "Gain muscle")]
    
    var body: some View {
        VStack {
            ProgressView(value: 0.5)
                .tint(.orange)
                
            Text("What's your primary goal?").font(.title).bold()
                .padding()
            ForEach(aimGoals) {goal in
                NavigationLink {
                            RegisterThree()
                        } label: {
                            Text(goal.goal)
                                .foregroundColor(.white)
                                .bold()
                                .frame(maxWidth: 340, minHeight: 32)
                                .background(.white.opacity(0.1))
                                .cornerRadius(10)
                                
                        }.padding(4)
            }
            
            Spacer()
        }.background(Image("gradient-background").resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 900))
    }
}

#Preview {
    RegisterTwo()
}

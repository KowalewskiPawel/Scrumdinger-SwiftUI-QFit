//
//  RegisterThree.swift
//  Scrumdinger
//
//  Created by Pawel on 24/03/2024.
//

import SwiftUI

struct PhysicalLevel : Identifiable {
    var level : String
    var description: String
    var id = UUID()
}

struct RegisterThree: View {
    var levels = [PhysicalLevel(level: "Lack of it", description: "I don't exercise at all."), PhysicalLevel(level: "Low", description: "I try to do a light workout 1-2 times a week."), PhysicalLevel(level: "Medium", description: "I train regularly 3-5 times a week."), PhysicalLevel(level: "Hard", description: "I do heavy workout or train daily.")]
    
    var body: some View {
        VStack {
            ProgressView(value: 0.65)
                .tint(.orange)
                
            Text("What's the level of your physical activity?").font(.title).bold()
                .padding()
            ForEach(levels) {level in
                NavigationLink {
                            RegisterFour()
                        } label: {
                            VStack {
                                Text(level.level)
                                    .font(.headline)
                                    .bold()
                                    .padding(2)
                                Text(level.description)
                                    .font(.caption)
                                    .padding(4)
                                    
                            }
                            .foregroundColor(.white)
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
    RegisterThree()
}

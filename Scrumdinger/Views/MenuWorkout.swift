//
//  MenuWorkout.swift
//  Scrumdinger
//
//  Created by Pawel on 25/03/2024.
//

import SwiftUI

struct Workout : Identifiable {
    var workoutTitle : String
    var image : String
    var calories : String
    var duration : String
    var id = UUID()
}

struct MenuWorkout: View {
    var workouts = [Workout(workoutTitle: "Push-ups", image: "pushups", calories: "150", duration: "5"), Workout(workoutTitle: "Squats", image: "squats", calories: "280", duration: "10"), Workout(workoutTitle: "Sit-ups", image: "situps", calories: "200", duration: "10"), Workout(workoutTitle: "Burpees", image: "burpees", calories: "300", duration: "10")]
    
    var body: some View {
        VStack {
            Text("Workout").font(.system(size: 50)).fontWeight(.heavy).padding(.trailing, 140)
            ForEach(workouts) { workout in
                HStack(alignment: .center) {
                    Image(workout.image)
                    VStack(alignment: .leading) {
                        Text(workout.workoutTitle)
                            .font(.title)
                            .bold()
                            .padding(.bottom, 40)
                            .padding(.leading, 10)
                        HStack {
                            Text("\(workout.calories) kcal ∙ \(workout.duration) mins"
                            )
                            Image(systemName: "arrow.right")
                        }.padding(.leading, 10)
                    }
                }
                .padding(8)
                .background {
                    ZStack(alignment: .top) {
                        Rectangle()
                    }
                    .foregroundColor(.white)
                }
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.bottom, 10)
            }
            Spacer()
        }.background(Image("menu-gradient").resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 900))    }
}

#Preview {
    MenuWorkout()
}

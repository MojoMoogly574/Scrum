//
//  WorkoutDetailView.swift
//  Scrum
//
//  Created by Joseph DeWeese on 3/12/22.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    let workout: DailyWorkout
    
    var body: some View {
        
        List {
            Section(header: Text("Workout Info")) {
                HStack {
                Label("Priority:", systemImage: "exclamationmark")
                    Spacer(minLength: 10)
                    Text(workout.priority)
            }
        }
    
        .accessibilityElement(children: .combine)
        HStack {
            Label("Theme", systemImage: "paintpalette")
            Spacer()
            Text(workout.theme.rawValue)
                .padding(4)
                                        .foregroundColor(workout.theme.accentColor)
                                        .background(workout.theme.mainColor)
                                        .cornerRadius(4)
        }
        .accessibilityElement(children: .combine)
}
        Section(header: Text("Exercises")) {
            ForEach(workout.exercises) { exercise in
                Label(exercise.exerciseName, systemImage: "star")
                
            }
        }
    }
}
struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: DailyWorkout.sampleData[0])
    }
}

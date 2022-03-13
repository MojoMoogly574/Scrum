//
//  WorkoutView.swift
//  Scrum
//
//  Created by Joseph DeWeese on 3/12/22.
//

import SwiftUI

struct WorkoutView: View {
    
    let workouts: [DailyWorkout]
    
    
    var body: some View {
        
        List {
            
            ForEach(workouts) { workout in
                NavigationLink(destination: Text(workout.workoutName)) {
                    
                    CardView(workout: workout)
                }
                        .listRowBackground(workout.theme.mainColor)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                }
            }
        .navigationTitle("Workouts")
        .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
            
        }
                    .accessibilityLabel("Add Workout")
    }
    }
}
struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(workouts: DailyWorkout.sampleData)
            
    }
}

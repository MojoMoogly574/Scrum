//
//  CardView.swift
//  Scrum
//
//  Created by Joseph DeWeese on 3/12/22.
//

import SwiftUI

struct CardView: View {
    
    let workout: DailyWorkout
    
    var body: some View {
        VStack(alignment: .leading){
            Text(workout.workoutName)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Text(workout.workoutDesc)
                .font(.caption)
                .foregroundColor(workout.theme.descriptionColor)
                .accessibilityAddTraits(.isStaticText)
            Spacer()
        
            HStack {
               Text("Exercises: \(workout.exercises.count)")
                    .accessibilityLabel("\(workout.exercises.count) Number of exercises")
                    .font(.caption2)
            Spacer()
            Label("\(workout.priority)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                            .accessibilityLabel("\(workout.priority) Workout type")
            .font(.caption2)
            .foregroundColor(Color.gray)
                                                .padding(3)
                                                .overlay(
                                                Capsule().stroke(Color(UIColor.systemBrown), lineWidth: 0.75))
                }
            .font(.caption)
                   }
        .padding()
                .foregroundColor(workout.theme.accentColor)
}

}
struct CardView_Previews: PreviewProvider {
    static var workout = DailyWorkout.sampleData[0]
    static var previews: some View {
        CardView(workout: workout)
            .background(workout.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

//
//  DailyWorkout.swift
//  Scrum
//
//  Created by Joseph DeWeese on 3/12/22.
//

import Foundation

struct DailyWorkout: Identifiable {
    
    let id: UUID
    var priority: String 
    var workoutName: String
    var workoutDesc: String
    var exercises: [Exercise]
    var theme: Theme
    
    init(id: UUID = UUID(), workoutName: String, workoutDescrip: String, exercises: [String], priority: String, theme: Theme) {
            self.id = id
            self.workoutName = workoutName
        self.workoutDesc = workoutDescrip
        self.exercises = exercises.map {Exercise(exerciseName: $0) }
            self.priority = priority
            self.theme = theme
        }
    
}
extension DailyWorkout {
    struct Exercise: Identifiable {
        let id: UUID
        var exerciseName: String
        
        init(id: UUID = UUID(), exerciseName: String) {
            self.id = id
            self.exerciseName = exerciseName
        }
    }
}

extension DailyWorkout {
    static let sampleData: [DailyWorkout] =
    [
        DailyWorkout(workoutName: "Chest/Triceps", workoutDescrip: "Chest and Tricep workout, complete for time.", exercises: ["Cathy", "Daisy", "Simon", "Jonathan"], priority: "Strength", theme: .oxblood),
        DailyWorkout(workoutName: "Combat Run (Long)",workoutDescrip: "1 Hour Run: 2 minutes Running, 4 Minutes Recovery",exercises: ["Katie", "Gray", "Euna", "Luis", "Darla"], priority:"Cardio", theme: .oxblood),
        DailyWorkout(workoutName: "Squat Workout", workoutDescrip: "Complete for time: 20 reps each set", exercises: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], priority:"Power",theme: .oxblood)
    ]
}

//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 12.05.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    // ... ⬛️
    @State private var selectedDate = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        //formatter.timeStyle = .short
        return formatter
    }
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    let endingDate: Date = Calendar.current.date(from: DateComponents(year: 2024)) ?? Date()
    
    // ... 🟨
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 12, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
    // ... ⬛️
    var body: some View {
        VStack {
            
            // ... 🟦
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            // ... 🟦
            DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute]
            )

            // ... 🟦
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date]
            )

            // ... 🟦
            //            DatePicker(
            //                "Start Date",
            //                selection: $selectedDate,
            //                displayedComponents: [.date]
            //            )
            //            .datePickerStyle(.graphical)
            
            // ... 🟦
            DatePicker(
                "Start Date",
                 selection: $selectedDate,
                 in: dateRange,
                 displayedComponents: [.date, .hourAndMinute]
            )
           .datePickerStyle(.graphical)
        }
    }
}

#Preview {
    DatePickerBootcamp()
}

/*
    🔴 DatePicker
        → A control for selecting an absolute date.
        → Use a DatePicker when you want to provide a view that allows the user to select a calendar date, and optionally a time.
        → You can limit the DatePicker to specific ranges of dates, allowing selections only before or after a certain date, or between two dates.

        @State private var date = Date()
 
         let dateRange: ClosedRange<Date> = {
             let calendar = Calendar.current
             let startComponents = DateComponents(year: 2021, month: 1, day: 1)
             let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
             return calendar.date(from:startComponents)!
                 ...
                 calendar.date(from:endComponents)!
         }()

         var body: some View {
             DatePicker(
                 "Start Date",
                 selection: $date,
                 displayedComponents: [.date]
             )
             DatePicker(
                 "Start Date",
                  selection: $date,
                  in: dateRange,
                  displayedComponents: [.date, .hourAndMinute]
             )
            .datePickerStyle(.graphical)
         }
 */

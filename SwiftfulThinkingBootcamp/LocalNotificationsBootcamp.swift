//
//  LocalNotificationsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 1.06.2024.
//

import CoreLocation
import SwiftUI
import UserNotifications

class NotificationManager {
    
    static let instance = NotificationManager() // Singleton
    private init() {}
    
    // ... 🔴 request Authorization
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        UNUserNotificationCenter.current()
            .requestAuthorization(options: options) { (success, error) in
                if let error: Error = error {
                    print("ERROR: \(error)")
                } else {
                    print("SUCCESS")
                }
            }
    }
    
    // ... 🔴 schedule Notification
    func scheduleNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "This is my first notification!"
        content.subtitle = "This was sooooo easy!"
        content.sound = .default
        content.badge = 1 // NSNumber(value: UIApplication.shared.applicationIconBadgeNumber + 1)
        
        // 🔵 time
        let trigger1 = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        
        // 🔵 calendar
        var dateComponents = DateComponents()
        dateComponents.hour = 13
        dateComponents.minute = 31
        //dateComponents.weekday = 2
        
        let trigger2 = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // 🔵 location
        let coordinates = CLLocationCoordinate2D(latitude: 40.00, longitude: 50.00)
        let region = CLCircularRegion(
            center: coordinates,
            radius: 100,
            identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = true
        
        let trigger3 = UNLocationNotificationTrigger(region: region, repeats: true)
        
        // ... ⚫️
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger3)
        UNUserNotificationCenter.current().add(request)
    }
    // ... 🔴 cancel Notification
    func cancelNotification() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

struct LocalNotificationsBootcamp: View {
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Request permission") {
                NotificationManager.instance.requestAuthorization()
            }
            Button("Schedule notification") {
                NotificationManager.instance.scheduleNotification()
            }
            Button("Cancel notification") {
                NotificationManager.instance.cancelNotification()
            }
        }
        .onChange(of: scenePhase) {
            UNUserNotificationCenter.current().setBadgeCount(0)
        }
    }
}

#Preview {
    LocalNotificationsBootcamp()
}

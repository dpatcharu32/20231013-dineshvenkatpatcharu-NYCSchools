//
//  _0231013_dineshvenkatpatcharu_NYCSchoolsApp.swift
//  20231013-dineshvenkatpatcharu-NYCSchools
//

//  Created by Dinesh on 13/10/23.
//
import SwiftUI

@main
struct _0231013_dineshvenkatpatcharu_NYCSchoolsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SchoolListScreen()
        }
    }
}

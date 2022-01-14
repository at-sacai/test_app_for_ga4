//
//  testApp.swift
//  test
//
//  Created by at-sakai on 2021/12/15.
//
import SwiftUI
import Firebase

@main
struct testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    init(){
        // Init Firebase
        FirebaseApp.configure()
    }
}

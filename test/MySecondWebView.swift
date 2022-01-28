//
//  MySecondWebView.swift
//  test
//
//  Created by at-sakai on 2022/01/27.
//

import SwiftUI
import Firebase

struct MySecondWebView: View {
    let urlString: String
    var body: some View {
        MyWebView(urlString: urlString)
            .navigationBarTitle(Text(urlString), displayMode: .inline)
            .onAppear() {
                Analytics.logEvent(AnalyticsEventScreenView,
                                   parameters: [AnalyticsParameterScreenName: "\(MyWebView.self)",
                                               AnalyticsParameterScreenClass: "\(MyWebView.self)"])
            }
    }
}

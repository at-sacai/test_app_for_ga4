//
//  ContentView.swift
//  test
//
//  Created by at-sakai on 2021/12/15.
//
import SwiftUI
import Firebase

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SubView()) {
                    Text("Go SubView")
                }
                NavigationLink(destination: MySecondWebView(urlString: "https://test-c1632.web.app/")) {
                    Text("Go WebView")
                }
            }
            .toolbar {
                Button(action: {
                    let name = "hoge"
                    let text = "This is hogehoge"
                    Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                        "name" : name as NSObject,
                        "full_text" : text as NSObject
                    ])
                }, label: {
                    Text("Button")
                })
            }
            .navigationTitle(Text("Main"))
            .navigationBarTitleDisplayMode(.inline)
            .onAppear() {
                Analytics.logEvent(AnalyticsEventScreenView,
                                   parameters: [AnalyticsParameterScreenName: "\(ContentView.self)",
                                               AnalyticsParameterScreenClass: "\(ContentView.self)"])
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

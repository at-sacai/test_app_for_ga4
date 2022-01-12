//
//  ContentView.swift
//  test
//
//  Created by at-sakai on 2021/12/15.
//
import SwiftUI
import Firebase

// Webデータの構造体
struct WebData: Identifiable{
    let id = UUID()
    let name:String
    let url:String
}
//あいうえお
//かきくけこ

// Webデータのリストを作る
let webList = [
    WebData(name: "アップル",
            url: "https://www.apple.com/jp/"),
    WebData(name: "東京国立博物館",
            url: "https://www.tnm.jp"),
    WebData(name: "東京都現代美術館",
            url: "https://www.mot-art-museum.jp"),
    WebData(name: "川崎水族館",
            url: "https://kawa-sui.com")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Subview()) {
                    Text("Go subview")
                }
                NavigationLink(destination: SecondView(urlString: "https://test-c1632.web.app/")) {
                    Text("Go webview")
                }
            }
            .toolbar {
                Button("Sign in") {}
            }
            .navigationTitle(Text("Top View"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Subview: View{
    var body: some View {
        NavigationView {
            List(webList){ item in
                HStack {
                    // Webリンク
                    Link(item.name, destination: URL(string: item.url)!)
                }
            }.navigationTitle("Webリスト")
        }
    }
}

struct SecondView: View {
    let urlString: String
    
    var body: some View {
        MyWebView(urlString: urlString)
            .navigationBarTitle(Text(urlString), displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


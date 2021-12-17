//
//  ContentView.swift
//  test
//
//  Created by at-sakai on 2021/12/15.
//
import SwiftUI

// Webデータの構造体
struct WebData: Identifiable{
    let id = UUID()
    let name:String
    let url:String
}

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
            NavigationLink(destination: Subview()) {
                Text("Go subview")
            }
        }
        .navigationTitle("Top View")
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

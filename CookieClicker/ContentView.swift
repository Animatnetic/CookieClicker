//
//  ContentView.swift
//  CookieClicker
//
//  Created by Faris Ansari on 23/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("0 cookies eaten")
            
            Button("OM NOM!"){
                print("You have eaten a cookie")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

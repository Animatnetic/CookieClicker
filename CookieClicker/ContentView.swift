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
            
            Button {
                print("You have eaten a cookie")
            } label: {
                Text("Eat me")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .shadow(color: .black, radius:10)
        }
    }
        
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

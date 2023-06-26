//
//  ContentView.swift
//  CookieClicker
//
//  Created by Faris Ansari on 23/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("count") private var counter = 0
    @AppStorage("message") private var message = ""
    @AppStorage("cookiesRemaining") private var cookiesInventory = 40 // We have
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("\(counter) cookies eaten")
                .font(.system(size: 20))
                .fontWeight(.heavy)
            Text("\(cookiesInventory) cookies remaining")
            
            Button {
                counter += 1
                cookiesInventory -= 1
                
                if counter >= 40 {
                    message = "Oh nooooooooooo 😱"
                } else if counter >= 30 && counter <= 39 {
                    message = "What are you doing??? 😰"
                } else if counter >= 20 && counter <= 29 {
                    message = "Don't eat too many cookies ☹️"
                }
            } label: {
                Text("Eat me")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .shadow(color: .black, radius:10)
            
            Text(message)
            
            Spacer()
            
            HStack {
                Button {
                    cookiesInventory = 40
                    counter = 0
                } label: {
                    Text("Reset cookies")
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                }
                
                Button {
                    cookiesInventory += 1
                } label: {
                    Text("Buy cookie")
                        .padding()
                        .foregroundColor(.white)
                        .background(.brown)
                        .cornerRadius(10)
                }
            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

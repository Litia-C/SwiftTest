//
//  ContentView.swift
//  AppTest02
//
//  Created by alumne on 02/11/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("🎯🎯🎯")
                .font(.largeTitle)
            
            Text("89")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .kerning(-1)
            HStack{
                Text("1")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Slider(value: .constant(10), in: 1...100)
                Text("100")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Button("TRY"){
                
            }
            .font(.title3)
            .foregroundColor(.white)
            .padding()
            
            .background(Color.blue)
            .cornerRadius(21)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().previewLayout(.fixed(width: 480, height: 320))
            ContentView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}

//
//  ContentView.swift
//  AppTest02
//
//  Created by alumne on 02/11/2026.
//

import SwiftUI

struct ContentView: View {
    @State var alertVisible = false
    @State var sliderValue = 20.0
    var body: some View {
        ZStack{
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
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Text("\(sliderValue)")
            Button("TRY"){
                self.alertVisible = true
            }
            .font(.title3)
            .foregroundColor(.white)
            .padding()
            
            .background(Color.accentColor)
            .cornerRadius(21)
        }
        .padding()
        .background(Color("BackgroundColor"))
    }
        .alert(isPresented: $alertVisible){
            Alert(
                title: Text("Hello"),
                message: Text("This is my first alert"),
                dismissButton: .default(Text("Got it"))
                
            )
        }
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

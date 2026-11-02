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
    
    @State private var game = Game()
    var body: some View {
        ZStack{
        VStack{
            Text("🎯🎯🎯")
                .font(.largeTitle)
            
            Text("\(game.target)")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .kerning(-1)
            
            SliderView(value: $sliderValue)

            Text("\(sliderValue)")
            Button("TRY"){
                game.calculatePoint(sliderValue: sliderValue)
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
    }.alert(isPresented: $alertVisible){
        Alert(
            title: Text("Tus puntos totales son..."),
            message: Text("\(game.points)"),
            dismissButton: .default(Text("OK")){
                game.calculateTarget()
            }
            
        )
    }
    }
}

struct SliderView: View{
    @Binding var value: Double
    
    var body: some View{
        HStack{
            Text("1")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Slider(value: $value, in: 1...100)
            Text("100")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
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

//
//  MarksView.swift
//  AppTest02
//
//  Created by alumne on 16/11/2026.
//

import Foundation
import SwiftUI

struct MarksView: View {
    let game:Game
    var body: some View {
        VStack{
            ForEach(game.marksList){ item in
            Text("TODO \(game.marksList[0].value)")
        }
    }
}
}

    struct MarksView_Previews: PreviewProvider {
        static var previews: some View {
            MarksView()
        }
    }

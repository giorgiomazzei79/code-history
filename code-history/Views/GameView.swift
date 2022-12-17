//
//  ContentView.swift
//  code-history
//
//  Created by Giorgio Mazzei on 29/07/22.
//

import SwiftUI

struct GameView: View {
 
  @StateObject var viewModel = GameViewModel()
 
  var body: some View {
    ZStack {
      GameColor.main.ignoresSafeArea()
      VStack {
        Text(viewModel.questionProgressText)
          .font(.callout)
          .multilineTextAlignment(.leading)
          .padding()
        QuestionView(question: viewModel.currentQuestion)
      }
    }
    .foregroundColor(.white)
    .navigationBarHidden(true) // New line
    .environmentObject(viewModel) // new line
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

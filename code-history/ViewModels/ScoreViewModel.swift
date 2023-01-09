//
//  ScoreViewModel.swift
//  code-history
//
//  Created by Giorgio Mazzei on 07/01/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}

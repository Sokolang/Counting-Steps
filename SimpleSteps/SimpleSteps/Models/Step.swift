//
//  Step.swift
//  SimpleSteps
//
//  Created by Anzhelika Sokolova on 10.07.2022.
//

import Foundation

struct Step: Identifiable {
    let id = UUID()
    let count: Int
    let date: Date
}

//
//  ContentView.swift
//  WatchSteps WatchKit Extension
//
//  Created by Anzhelika Sokolova on 12.07.2022.
//

import SwiftUI
import ClockKit


struct ContentView: View {
    var body: some View {
        Text("10000")
            .font(.largeTitle)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            CLKComplicationTemplateModularLargeStandardBody(headerTextProvider: CLKSimpleTextProvider(text: "Steps"),
                                                            body1TextProvider: CLKSimpleTextProvider(text: "9000")).previewContext()
        }
    }
}

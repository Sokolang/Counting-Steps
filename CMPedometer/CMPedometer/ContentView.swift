//
//  ContentView.swift
//  CMPedometer
//
//  Created by Anzhelika Sokolova on 10.07.2022.
//

import SwiftUI
import CoreMotion

struct ContentView: View {
    
    private var pedometer: CMPedometer = CMPedometer()
    
    @State private var steps: Int?
    
    private var isPedometerAvaible: Bool {
        return CMPedometer.isPedometerEventTrackingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable()
    }
    
    private func initializePedometer() {
        
        if isPedometerAvaible {
           // guard let startDate = Calendar.current.date(byAdding: .day, value: -1, to: Date()) else {return}
            pedometer.startUpdates(from: Date()) { (data, error) in
                guard let data = data, error == nil else { return }
                
                steps = data.numberOfSteps.intValue
            }
        }
    }
    
    var body: some View {
        Text(steps != nil ? "\(steps!)" : "---")
            .padding()
            .onAppear{
                initializePedometer()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

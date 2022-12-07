//
//  ContentView.swift
//  Restart
//
//  Created by Raul Emilio Astete Acuna on 6/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnBoardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.5), value: isOnBoardingViewActive)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

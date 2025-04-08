//
//  TCA_TutorialApp.swift
//  TCA_Tutorial
//
//  Created by SiJongKim on 4/8/25.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_TutorialApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            CounterView(store: TCA_TutorialApp.store)
        }
    }
}

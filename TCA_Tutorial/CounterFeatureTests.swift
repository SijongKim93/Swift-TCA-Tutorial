//
//  CounterFeatureTests.swift
//  TCA_Tutorial
//
//  Created by SiJongKim on 4/8/25.
//

import ComposableArchitecture
import Testing

@MainActor
struct CounterFeatureTests {
    @Test
    func basics() async {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        }

        await store.send(.incrementButtonTapped) {
            $0.count = 1
        }
        await store.send(.decrementButtonTapped) {
            $0.count = 0
        }
    }
}

//
//  CucumberSwiftExampleTests.swift
//  CucumberSwiftExampleTests
//
//  Created by Christian Stangier on 18.05.20.
//  Copyright © 2020 Christian Stangier. All rights reserved.
//

import CucumberSwift
import Foundation
import XCTest

// @testable import CucumberSwiftExample
class CucumberSwiftExampleTests: XCTest {}

extension Cucumber: StepImplementation {
    public var bundle: Bundle {
        return Bundle(for: CucumberSwiftExampleTests.self)
    }

    public func setupSteps() {
        // Step definitions
        Given("I have a feature") { matches, _ in
            print(matches[0])
        }

        When("I run it") { matches, _ in
            print(matches[0])
        }

        Then("it should be executed") { matches, _ in
            print(matches[0])
        }
    }
}

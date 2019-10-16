import XCTest

import mccCoreTests

var tests = [XCTestCaseEntry]()
tests += mccCoreTests.allTests()
XCTMain(tests)

import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LinkedListTests.allTests),
        testCase(QueueTests.allTests)
    ]
}
#endif

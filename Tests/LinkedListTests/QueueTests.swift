import XCTest
@testable import LinkedList

final class QueueTests: XCTestCase {

    func testAdvancedList() {
        let list = LinkedList<Int>()
        XCTAssertEqual(list.description, "[]")
        XCTAssertEqual(list.describeInverse, "[]")
        list.addLast(1)
        XCTAssertEqual(list.description, "[1]")
        XCTAssertEqual(list.describeInverse, "[1]")
        list.addLast(2)
        XCTAssertEqual(list.description, "[1, 2]")
        XCTAssertEqual(list.describeInverse, "[2, 1]")
        list.addLast(3)
        XCTAssertEqual(list.description, "[1, 2, 3]")
        list.insertItem(value: 7, position: 1)
        XCTAssertEqual(list.description, "[1, 7, 2, 3]")
        XCTAssertEqual(list.describeInverse, "[3, 2, 7, 1]")
        list.insertItem(value: 8, position: 0)
        XCTAssertEqual(list.description, "[8, 1, 7, 2, 3]")
        list.removeItem(at: 4)
        XCTAssertEqual(list.description, "[8, 1, 7, 2]")
        list.replaceItem(9, position: 3)
        XCTAssertEqual(list.description, "[8, 1, 7, 9]")
        XCTAssertEqual(list.describeInverse, "[9, 7, 1, 8]")
        XCTAssertEqual(list.getItem(at: 4), nil)

    }

    func testAdvancedQueue() {
        let myq1 = Queue<Int>()
        myq1.enqueue([1, 2, 3])
        XCTAssertEqual(myq1.list.description, "[1, 2, 3]")
        XCTAssertEqual(myq1.list.count, 3)
        XCTAssertEqual(myq1.dequeue(), 1)
        XCTAssertEqual(myq1.dequeue(), 2)
        XCTAssertEqual(myq1.list.count, 1)
        XCTAssertEqual(myq1.dequeue(), 3)
        XCTAssertEqual(myq1.list.count, 0)
        XCTAssertEqual(myq1.dequeue(), nil)
        XCTAssertEqual(myq1.list.description, "[]")
        myq1.enqueue(1)
        XCTAssertEqual(myq1.list.description, "[1]")
        XCTAssertEqual(myq1.dequeue(), 1)
        XCTAssertEqual(myq1.list.count, 0)
        XCTAssertEqual(myq1.dequeue(), nil)
        XCTAssertEqual(myq1.list.count, 0)
        XCTAssertEqual(myq1.dequeue(), nil)
        XCTAssertEqual(myq1.list.count, 0)
        XCTAssertEqual(myq1.list.description, "[]")
        XCTAssertEqual(myq1.list.count, 0)
        myq1.enqueue(1)
        XCTAssertEqual(myq1.list.count, 1)
        XCTAssertEqual(myq1.list.description, "[1]")
        XCTAssertEqual(myq1.list.count, 1)
        myq1.enqueue([7, 3, 6, 9, 4])
        myq1.enqueue([2, 1, 22])
        XCTAssertEqual(myq1.list.description, "[1, 7, 3, 6, 9, 4, 2, 1, 22]")
        XCTAssertEqual(myq1.list.indexOf(23), nil)
        XCTAssertEqual(myq1.list.removeLast(), 22)
        XCTAssertEqual(myq1.list.removeLast(), 1)
        XCTAssertEqual(myq1.list.removeLast(), 2)
        XCTAssertEqual(myq1.list.removeLast(), 4)
        XCTAssertEqual(myq1.list.removeLast(), 9)
        XCTAssertEqual(myq1.list.removeLast(), 6)
        XCTAssertEqual(myq1.list.removeLast(), 3)
        XCTAssertEqual(myq1.list.removeLast(), 7)
        XCTAssertEqual(myq1.list.count, 1)
        XCTAssertEqual(myq1.list.removeLast(), 1)
        XCTAssertEqual(myq1.list.count, 0)
        XCTAssertEqual(myq1.list.removeLast(), nil)
        XCTAssertEqual(myq1.list.count, 0)
        XCTAssertEqual(myq1.list.removeLast(), nil)
        XCTAssertEqual(myq1.list.count, 0)

    }

    func testAdvancedQueue2() {
        let myq2 = Queue<Int>()
        myq2.enqueue([5, 7, 9, 11])
        XCTAssertEqual(myq2.list.description, "[5, 7, 9, 11]")
        XCTAssertEqual(myq2.list.count, 4)
        // TEST CASES FOR ADD METHOD
        myq2.list.insertItem(value: 88, position: 0)  // at index of first (0)
        XCTAssertEqual(myq2.list.description, "[88, 5, 7, 9, 11]")
        myq2.list.insertItem(value: 99, position: 3)  // at index somewhere in the middle (3)
        XCTAssertEqual(myq2.list.description, "[88, 5, 7, 99, 9, 11]")
        myq2.list.insertItem(value: 77, position: 5)  // at index of last (5)
        XCTAssertEqual(myq2.list.description, "[88, 5, 7, 99, 9, 77, 11]")
        XCTAssertEqual(myq2.list.count, 7)
        myq2.list.insertItem(value: 66, position: -1)
        XCTAssertEqual(myq2.list.count, 7)
        myq2.list.insertItem(value: 66, position: 7)
        XCTAssertEqual(myq2.list.count, 7)
        XCTAssertEqual(myq2.list.description, "[88, 5, 7, 99, 9, 77, 11]")
        // TEST CASES FOR INDEXOF METHOD
        XCTAssertEqual(myq2.list.indexOf(88), 0)   // FIRST ITEM
        XCTAssertEqual(myq2.list.indexOf(7), 2)    // SOMEWHERE IN THE MIDDLE
        XCTAssertEqual(myq2.list.indexOf(11), 6)   // LAST ITEM
        XCTAssertEqual(myq2.list.indexOf(45), nil) // DOESNT EXIST
        // TEST CASES FOR REMOVELAST METHOD
        XCTAssertEqual(myq2.list.removeLast(), 11)
        XCTAssertEqual(myq2.list.removeLast(), 77)
        XCTAssertEqual(myq2.list.removeLast(), 9)
        XCTAssertEqual(myq2.list.removeLast(), 99)
        XCTAssertEqual(myq2.list.removeLast(), 7)
        XCTAssertEqual(myq2.list.removeLast(), 5)
        XCTAssertEqual(myq2.list.removeLast(), 88)
        XCTAssertEqual(myq2.list.removeLast(), nil) // EMPTY LIST RETURNS NIL
    }

    static var allTests = [
        ("testAdvancedList", testAdvancedList),
        ("testAdvancedQueue", testAdvancedQueue),
        ("testAdvancedQueue2", testAdvancedQueue2)
    ]
}

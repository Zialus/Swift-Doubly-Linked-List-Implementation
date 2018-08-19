import XCTest
@testable import LinkedList

final class LinkedListTests: XCTestCase {
    fileprivate let numbers = [8, 2, 10, 9, 7, 5]

    fileprivate func buildList() -> LinkedList<Int> {
        let list = LinkedList<Int>()
        for number in numbers {
            list.addLast(number)
        }
        return list
    }

    func testEmptyList() {
        let list = LinkedList<Int>()
        XCTAssertTrue(list.isEmpty)
        XCTAssertEqual(list.count, 0)
        XCTAssertNil(list.head)
        XCTAssertNil(list.tail)
    }

    func testListWithOneElement() {
        let list = LinkedList<Int>()
        list.addLast(123)

        XCTAssertFalse(list.isEmpty)
        XCTAssertEqual(list.count, 1)

        XCTAssertNotNil(list.head)
        XCTAssertNil(list.head!.prev)
        XCTAssertNil(list.head!.next)
        XCTAssertEqual(list.head!.value, 123)

        XCTAssertNotNil(list.tail)
        XCTAssertNil(list.tail!.prev)
        XCTAssertNil(list.tail!.next)
        XCTAssertEqual(list.tail!.value, 123)

        XCTAssertTrue(list.head === list.tail)
    }

    func testListWithTwoElements() {
        let list = LinkedList<Int>()
        list.addLast(123)
        list.addLast(456)

        XCTAssertEqual(list.count, 2)

        XCTAssertNotNil(list.head)
        XCTAssertEqual(list.head!.value, 123)

        XCTAssertNotNil(list.tail)
        XCTAssertEqual(list.tail!.value, 456)

        XCTAssertTrue(list.head !== list.tail)

        XCTAssertNil(list.head!.prev)
        XCTAssertTrue(list.head!.next === list.tail)
        XCTAssertTrue(list.tail!.prev === list.head)
        XCTAssertNil(list.tail!.next)
    }

    func testListWithThreeElements() {
        let list = LinkedList<Int>()
        list.addLast(123)
        list.addLast(456)
        list.addLast(789)

        XCTAssertEqual(list.count, 3)

        XCTAssertNotNil(list.head)
        XCTAssertEqual(list.head!.value, 123)

        let second = list.head!.next
        XCTAssertNotNil(second)
        XCTAssertEqual(second!.value, 456)

        XCTAssertNotNil(list.tail)
        XCTAssertEqual(list.tail!.value, 789)

        XCTAssertNil(list.head!.prev)
        XCTAssertTrue(list.head!.next === second)
        XCTAssertTrue(second!.prev === list.head)
        XCTAssertTrue(second!.next === list.tail)
        XCTAssertTrue(list.tail!.prev === second)
        XCTAssertNil(list.tail!.next)
    }

//    func testNodeAtIndexInListWithOneElement() {
//        let list = LinkedList<Int>()
//        list.addLast(123)
//
//        let node = list.node(at: 0)
//        XCTAssertNotNil(node)
//        XCTAssertEqual(node.value, 123)
//        XCTAssertTrue(node === list.head)
//    }
//
//    func testNodeAtIndex() {
//        let list = buildList()
//
//        let nodeCount = list.count
//        XCTAssertEqual(nodeCount, numbers.count)
//
//        let first = list.node(at: 0)
//        XCTAssertNotNil(first)
//        XCTAssertTrue(first === list.head)
//        XCTAssertEqual(first.value, numbers[0])
//
//        let last = list.node(at: nodeCount - 1)
//        XCTAssertNotNil(last)
//        XCTAssertTrue(last === list.tail)
//        XCTAssertEqual(last.value, numbers[nodeCount - 1])
//
//        for i in 0..<nodeCount {
//            let node = list.node(at: i)
//            XCTAssertNotNil(node)
//            XCTAssertEqual(node.value, numbers[i])
//        }
//    }
//
//    func testSubscript() {
//        let list = buildList()
//        for i in 0 ..< list.count {
//            XCTAssertEqual(list[i], numbers[i])
//        }
//    }
//
//    func testInsertAtIndexInEmptyList() {
//        let list = LinkedList<Int>()
//        list.insert(123, at: 0)
//
//        XCTAssertFalse(list.isEmpty)
//        XCTAssertEqual(list.count, 1)
//
//        let node = list.node(at: 0)
//        XCTAssertNotNil(node)
//        XCTAssertEqual(node.value, 123)
//    }
//
//    func testInsertAtIndex() {
//        let list = buildList()
//        let prev = list.node(at: 2)
//        let next = list.node(at: 3)
//        let nodeCount = list.count
//
//        list.insert(444, at: 3)
//
//        let node = list.node(at: 3)
//        XCTAssertNotNil(node)
//        XCTAssertEqual(node.value, 444)
//        XCTAssertEqual(nodeCount + 1, list.count)
//
//        XCTAssertFalse(prev === node)
//        XCTAssertFalse(next === node)
//        XCTAssertTrue(prev.next === node)
//        XCTAssertTrue(next.prev === node)
//    }
//
//    func testInsertListAtIndex() {
//        let list = buildList()
//        let list2 = LinkedList<Int>()
//        list2.addLast(99)
//        list2.addLast(102)
//        list.insert(list2, at: 2)
//        XCTAssertTrue(list.count == 8)
//        XCTAssertEqual(list.node(at: 1).value, 2)
//        XCTAssertEqual(list.node(at: 2).value, 99)
//        XCTAssertEqual(list.node(at: 3).value, 102)
//        XCTAssertEqual(list.node(at: 4).value, 10)
//    }
//
//    func testInsertListAtFirstIndex() {
//        let list = buildList()
//        let list2 = LinkedList<Int>()
//        list2.addLast(99)
//        list2.addLast(102)
//        list.insert(list2, at: 0)
//        XCTAssertTrue(list.count == 8)
//        XCTAssertEqual(list.node(at: 0).value, 99)
//        XCTAssertEqual(list.node(at: 1).value, 102)
//        XCTAssertEqual(list.node(at: 2).value, 8)
//    }
//
//    func testInsertListAtLastIndex() {
//        let list = buildList()
//        let list2 = LinkedList<Int>()
//        list2.addLast(99)
//        list2.addLast(102)
//        list.insert(list2, at: list.count)
//        XCTAssertTrue(list.count == 8)
//        XCTAssertEqual(list.node(at: 5).value, 5)
//        XCTAssertEqual(list.node(at: 6).value, 99)
//        XCTAssertEqual(list.node(at: 7).value, 102)
//    }
//
//    func testAppendList() {
//        let list = buildList()
//        let list2 = LinkedList<Int>()
//        list2.addLast(99)
//        list2.addLast(102)
//        list.addLast(list2)
//        XCTAssertTrue(list.count == 8)
//        XCTAssertEqual(list.node(at: 5).value, 5)
//        XCTAssertEqual(list.node(at: 6).value, 99)
//        XCTAssertEqual(list.node(at: 7).value, 102)
//    }
//
//    func testAppendListToEmptyList() {
//        let list = LinkedList<Int>()
//        let list2 = LinkedList<Int>()
//        list2.addLast(5)
//        list2.addLast(10)
//        list.addLast(list2)
//        XCTAssertTrue(list.count == 2)
//        XCTAssertEqual(list.node(at: 0).value, 5)
//        XCTAssertEqual(list.node(at: 1).value, 10)
//    }
//
//    func testRemoveAtIndexOnListWithOneElement() {
//        let list = LinkedList<Int>()
//        list.addLast(123)
//
//        let value = list.remove(at: 0)
//        XCTAssertEqual(value, 123)
//
//        XCTAssertTrue(list.isEmpty)
//        XCTAssertEqual(list.count, 0)
//        XCTAssertNil(list.head)
//        XCTAssertNil(list.tail)
//    }
//
//    func testRemoveAtIndex() {
//        let list = buildList()
//        let prev = list.node(at: 2)
//        let next = list.node(at: 3)
//        let nodeCount = list.count
//
//        list.insert(444, at: 3)
//
//        let value = list.remove(at: 3)
//        XCTAssertEqual(value, 444)
//
//        let node = list.node(at: 3)
//        XCTAssertTrue(next === node)
//        XCTAssertTrue(prev.next === node)
//        XCTAssertTrue(node.prev === prev)
//        XCTAssertEqual(nodeCount, list.count)
//    }

    func testRemoveLastOnListWithOneElement() {
        let list = LinkedList<Int>()
        list.addLast(123)

        let value = list.removeLast()
        XCTAssertEqual(value, 123)

        XCTAssertTrue(list.isEmpty)
        XCTAssertEqual(list.count, 0)
        XCTAssertNil(list.head)
        XCTAssertNil(list.tail)
    }

//    func testRemoveLast() {
//        let list = buildList()
//        let last = list.tail
//        let prev = last!.prev
//        let nodeCount = list.count
//
//        let value = list.removeLast()
//        XCTAssertEqual(value, 5)
//
//        XCTAssertNil(last!.prev)
//        XCTAssertNil(last!.next)
//
//        XCTAssertNil(prev!.next)
//        XCTAssertTrue(list.tail === prev)
//        XCTAssertEqual(nodeCount - 1, list.count)
//    }
//
//    func testRemoveAll() {
//        let list = buildList()
//        list.removeAll()
//        XCTAssertTrue(list.isEmpty)
//        XCTAssertEqual(list.count, 0)
//        XCTAssertNil(list.head)
//        XCTAssertNil(list.tail)
//    }
//
//    func testReverseLinkedList() {
//        let list = buildList()
//        let first = list.head
//        let last = list.tail
//        let nodeCount = list.count
//
//        list.reverse()
//
//        XCTAssertTrue(first === list.tail)
//        XCTAssertTrue(last === list.head)
//        XCTAssertEqual(nodeCount, list.count)
//    }
//
//    func testArrayLiteralInitTypeInfer() {
//        let arrayLiteralInitInfer: LinkedList = [1.0, 2.0, 3.0]
//
//        XCTAssertEqual(arrayLiteralInitInfer.count, 3)
//        XCTAssertEqual(arrayLiteralInitInfer.head?.value, 1.0)
//        XCTAssertEqual(arrayLiteralInitInfer.tail?.value, 3.0)
//        XCTAssertEqual(arrayLiteralInitInfer[1], 2.0)
//        XCTAssertEqual(arrayLiteralInitInfer.removeLast(), 3.0)
//        XCTAssertEqual(arrayLiteralInitInfer.count, 2)
//    }
//
//    func testArrayLiteralInitExplicit() {
//        let arrayLiteralInitExplicit: LinkedList<Int> = [1, 2, 3]
//
//        XCTAssertEqual(arrayLiteralInitExplicit.count, 3)
//        XCTAssertEqual(arrayLiteralInitExplicit.head?.value, 1)
//        XCTAssertEqual(arrayLiteralInitExplicit.tail?.value, 3)
//        XCTAssertEqual(arrayLiteralInitExplicit[1], 2)
//        XCTAssertEqual(arrayLiteralInitExplicit.removeLast(), 3)
//        XCTAssertEqual(arrayLiteralInitExplicit.count, 2)
//    }
//
//    func testConformanceToCollectionProtocol() {
//        let collection: LinkedList<Int> = [1, 2, 3, 4, 5]
//        let index2 = collection.index(collection.startIndex, offsetBy: 2)
//        let value = collection[index2]
//
//        XCTAssertTrue(value == 3)
//    }

    static var allTests = [
        ("testEmptyList", testEmptyList),
        ("testListWithOneElement", testListWithOneElement),
        ("testListWithTwoElements", testListWithTwoElements),
        ("testListWithThreeElements", testListWithThreeElements),
        ("testRemoveLastOnListWithOneElement", testRemoveLastOnListWithOneElement)
    ]
}

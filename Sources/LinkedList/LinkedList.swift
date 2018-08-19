//
//  MyLinkedList.swift
//  Doubly Linked List Implementation
//
//  Created by Ergin Bilgin on 20/10/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

public class LinkedList<T: Comparable> {
    public var count: Int
    var head: Node<T>?
    var tail: Node<T>?

    public init() {
        count = 0
        head = nil
        tail = nil
    }

    var isEmpty: Bool {
        return self.count == 0
    }

    public func addLast(_ value: T) {
        let node = Node<T>(value: value)

        if let tail = self.tail {
            node.prev = tail
            tail.next = node
            self.tail = node

        } else {
            self.head = node
            self.tail = node
        }

        self.count += 1
    }

    public func indexOf(_ itemToFind: T) -> Int? {
        if self.isEmpty {
            return nil
        } else {
            var index = 0
            var currentNode = self.head
            while currentNode != nil {
                if currentNode!.value == itemToFind {
                    return index
                } else {
                    index += 1
                    currentNode = currentNode!.next
                }
            }
            return nil
        }
    }

    public func removeLast() -> T? {
        let lastPos = self.count - 1
        if lastPos < 0 {
            return nil
        } else {
            let value = getItem(at: lastPos)
            removeItem(at: lastPos)
            return value
        }
    }

    public func insertItem(value: T, position: Int) {
        let node = Node<T>(value: value)
        if self.count > position && position >= 0 {  // if position exists
            if position == 0 {                       // if position is head
                node.next = self.head
                self.head!.prev = node
                self.head = node
            } else {                                 // if position is not head
                var currentNode = self.head
                for _ in 0...position-1 {
                    currentNode = currentNode!.next!
                }
                node.next = currentNode
                node.prev = currentNode!.prev
                currentNode!.prev!.next = node
                currentNode!.prev = node
            }
            self.count += 1
        }
    }

    public func removeItem(at position: Int) {
        if self.count > position {                             // if position exists
            if self.count != 1 {
                if position == 0 {                             // if position is head
                    self.head!.next!.prev = head!.prev
                    self.head = head!.next!
                }
                if position == self.count-1 {                  // if position is tail
                    self.tail!.prev!.next = tail!.next
                    self.tail = tail!.prev!
                }
                if position > 0 && position < count-1 {        // if position at middle
                    var currentNode = self.head
                    for _ in 0...position-1 {
                        currentNode = currentNode!.next!
                    }
                    currentNode!.next!.prev = currentNode!.prev
                    currentNode!.prev!.next = currentNode!.next
                }
            } else {                                           // if last node
                head = nil
                tail = nil
            }
            self.count -= 1
        }
    }

    public func replaceItem(_ itemToReplace: T, position: Int) {
        if self.count > position && position >= 0 {        // if position exists
            var currentNode = self.head
            if position == 0 {                             // if position is head
                currentNode!.value = itemToReplace
            } else {                                       // if position is not head
                for _ in 0...position-1 {
                    currentNode = currentNode!.next!
                }
                currentNode!.value = itemToReplace
            }
        }
    }

    public func getItem(at position: Int) -> T? {
        if self.count > position {                         // if position exists
            var currentNode = self.head
            if position == 0 {                             // if position is head
                return currentNode!.value
            } else {                                       // if posisiton is not head
                for _ in 0...position-1 {
                    currentNode = currentNode!.next!
                }
                return currentNode!.value
            }
        } else {
            return nil                                     // if position doesn't exist
        }

    }

    public var describeInverse: String {
        var output: String = "["
        if let firstNode = self.tail {
            output += String(describing: firstNode.value)
            var currentNode = firstNode.prev
            while currentNode != nil {
                output += ", "
                output += String(describing: currentNode!.value)
                currentNode = currentNode!.prev
            }
        }
        output += "]"

        return output
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var output: String = "["
        if let firstNode = self.head {
            output += String(describing: firstNode.value)
            var currentNode = firstNode.next
            while currentNode != nil {
                output += ", "
                output += String(describing: currentNode!.value)
                currentNode = currentNode!.next
            }
        }
        output += "]"

        return output
    }
}

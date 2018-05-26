//
//  MyLinkedList.swift
//  Doubly Linked List Implementation
//
//  Created by Ergin Bilgin on 20/10/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

class LinkedList<T: Comparable> {
    var count: Int
    var head: Node<T>?
    var tail: Node<T>?

    init() {
        count = 0
        head = nil
        tail = nil
    }

    func isEmpty() -> Bool {
        return self.count == 0
    }

    func addLast(_ value: T) {
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

    func indexOf (_ itemToFind: T) -> Int? {
        if self.isEmpty() {
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

    func removeLast() -> T? {
        let lastPos = self.count - 1
        if lastPos < 0 {
            return nil
        } else {
            let value = getItem(at: lastPos)
            removeItem(at: lastPos)
            return value
        }
    }

    func insertItem(value: T, position: Int) {
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

    func removeItem(at position: Int) {
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

    func replaceItem(_ itemToReplace: T, position: Int) {
        if self.count > position {                         // if position exists
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

    func getItem(at position: Int) -> T? {
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

    func printList() {
        var output: String = "["
        var currentNode: Node? = self.head
        while currentNode != nil {
            output += String(describing: currentNode!.value)
            currentNode = currentNode!.next
            if currentNode != nil {     // if statement is for avoid "," sign at the end.
                output += ", "
            }
        }
        output += "]"
        print(output)
    }

    func printInverse() {
        var output: String = "["
        var currentNode: Node? = self.tail
        while currentNode != nil {
            output += String(describing: currentNode!.value)
            currentNode = currentNode!.prev
            if currentNode != nil {     // if statement is for avoid "," sign at the end.
                output += ", "
            }
        }
        output += "]"
        print(output)
    }

}

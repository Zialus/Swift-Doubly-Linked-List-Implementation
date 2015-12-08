//
//  Test.swift
//  MyLinkedList
//
//  Created by Ergin Bilgin on 01/12/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

// methods
// 
//
//
//
//
//
//
//
//
//
//

//func indexOf (itemToFind: T) -> Int{
//    var index = 0
//    if (self.count > 0){                         // -if position exists
//        var currentNode: Node? = self.head
//        while (currentNode != nil) {
//            if currentNode!.value! == itemToFind{
//                return index
//            }
//            index++
//            currentNode = currentNode!.next
//        }
//    }
//    return -1
//}

//func removeLast() -> T?{
//    if count == 0{
//        return 0 as! T
//    }
//    if (count == 1){
//        let value = head.value
//        head = Node<T>()
//        tail = Node<T>()
//        self.count--
//        return value
//    }
//    let value = self.tail.value
//    self.tail.prev!.next = tail.next
//    self.tail = tail.prev!
//    self.count--
//    return value
//}

//func add(value: T, position: Int){
//    let node = Node<T>(value: value)
//    if (self.count > position) {            // -if position exists
//        if (position == 0){                 // --if position is head
//            node.next = self.head
//            self.head.prev = node
//            self.head = node
//        } else {                            // --if position is not head
//            var currentNode = self.head
//            for _ in 0...position-1 {
//                currentNode = currentNode.next!
//            }
//            node.next = currentNode
//            node.prev = currentNode.prev
//            currentNode.prev!.next = node
//            currentNode.prev = node
//        }
//        self.count++
//    }
//}


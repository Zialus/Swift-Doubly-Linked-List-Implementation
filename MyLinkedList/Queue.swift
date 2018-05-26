//
//  Queue.swift
//  Queue Implementation by Using Custom Made Doubly Linked List
//
//  Created by Ergin Bilgin on 28/09/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

class Queue<T: Comparable> {
    var list: LinkedList<T>

    init() {
        self.list = LinkedList<T>()
    }

    func isEmpty() -> Bool {
        return self.list.isEmpty()
    }

    func enqueue(_ value: T) {
        list.addLast(value)
    }

    func dequeue() -> T? {
        if self.isEmpty() {
            return nil
        } else {
            let temp: T = list.getItem(at: 0)!
            list.removeItem(at: 0)
            return temp
        }

    }

}

//
//  Queue.swift
//  Queue Implementation by Using Custom Made Doubly Linked List
//
//  Created by Ergin Bilgin on 28/09/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

public class Queue<T: Comparable> {
    public var list: LinkedList<T>

    public init() {
        self.list = LinkedList<T>()
    }

    func isEmpty() -> Bool {
        return self.list.isEmpty
    }

    public func enqueue(_ value: T) {
        list.addLast(value)
    }

    public func dequeue() -> T? {
        if self.isEmpty() {
            return nil
        } else {
            let temp: T = list.getItem(at: 0)!
            list.removeItem(at: 0)
            return temp
        }

    }

}

//
//  Node.swift
//  Doubly Linked List Node Implementation
//
//  Created by Ergin Bilgin on 28/09/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

class Node<T: Comparable> {
    var value: T
    var next: Node<T>?
    var prev: Node<T>?

    init(value: T) {
        self.value = value
        self.next = nil
        self.prev = nil
    }

}

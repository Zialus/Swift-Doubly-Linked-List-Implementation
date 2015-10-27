//
//  main.swift
//  Test cases for Queue Made with Custom Doubly Linked List
//
//  Created by Ergin Bilgin on 27/10/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

print("Hello, World!")
var list = MyLinkedList()
list.addItem(1)
list.printList()
list.addItem(2)
list.printList()
list.addItem(3)
list.printList()
list.insertItem(7, position: 1)
list.printList()
list.printInverse()
list.insertItem(8, position: 0)
list.printList()
list.removeItem(4)
list.printList()
list.replaceItem(9, position: 3)
list.printList()
print(list.getitemAt(4))

var myq = Queue()
myq.enqueue(1)
myq.enqueue(2)
myq.enqueue(3)
myq.list.printList()
print(myq.list.count)
print(myq.dequeue())
print(myq.dequeue())
print(myq.list.count)
print(myq.dequeue())
print(myq.list.count)
print(myq.dequeue())
myq.list.printList()
myq.enqueue(1)
myq.list.printList()
print(myq.dequeue())
print(myq.list.count)
print(myq.dequeue())
print(myq.list.count)
print(myq.dequeue())
print(myq.list.count)
myq.list.printList()
print(myq.list.count)
myq.enqueue(1)
print(myq.list.count)
myq.list.printList()
print(myq.list.count)

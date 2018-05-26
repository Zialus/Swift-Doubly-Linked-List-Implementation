//
//  main.swift
//  Test cases for Queue Made with Custom Doubly Linked List
//
//  Created by Ergin Bilgin on 27/10/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

print("Hello, World!")
var list = LinkedList<Int>()
list.addLast(1)
list.printList()
list.addLast(2)
list.printList()
list.addLast(3)
list.printList()
list.insertItem(value: 7, position: 1)
list.printList()
list.printInverse()
list.insertItem(value: 8, position: 0)
list.printList()
list.removeItem(at: 4)
list.printList()
list.replaceItem(9, position: 3)
list.printList()
print(list.getItem(at: 4) as Any)

var myq1 = Queue<Int>()
myq1.enqueue(1)
myq1.enqueue(2)
myq1.enqueue(3)
myq1.list.printList()
print(myq1.list.count)
print(myq1.dequeue() as Any)
print(myq1.dequeue() as Any)
print(myq1.list.count)
print(myq1.dequeue() as Any)
print(myq1.list.count)
print(myq1.dequeue() as Any)
myq1.list.printList()
myq1.enqueue(1)
myq1.list.printList()
print(myq1.dequeue() as Any)
print(myq1.list.count)
print(myq1.dequeue() as Any)
print(myq1.list.count)
print(myq1.dequeue() as Any)
print(myq1.list.count)
myq1.list.printList()
print(myq1.list.count)
myq1.enqueue(1)
print(myq1.list.count)
myq1.list.printList()
print(myq1.list.count)
myq1.enqueue(7)
myq1.enqueue(3)
myq1.enqueue(6)
myq1.enqueue(9)
myq1.enqueue(4)
myq1.enqueue(2)
myq1.enqueue(1)
myq1.enqueue(22)
myq1.list.printList()
print(myq1.list.indexOf(23) as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.removeLast() as Any)
print(myq1.list.count)
print(myq1.list.removeLast() as Any)
print(myq1.list.count)
print(myq1.list.removeLast() as Any)
print(myq1.list.count)
print(myq1.list.removeLast() as Any)
print(myq1.list.count)

var myq2 = Queue<Int>()
//------CREATE INITIAL QUEUE---------
myq2.enqueue(5)
myq2.enqueue(7)
myq2.enqueue(9)
myq2.enqueue(11)
myq2.list.printList()
//-----TEST CASES FOR ADD METHOD-----
myq2.list.insertItem(value: 88, position: 0) // at index 0
myq2.list.printList()
myq2.list.insertItem(value: 99, position: 3) // at index somewhere between (3)
myq2.list.printList()
myq2.list.insertItem(value: 77, position: 5) // at index of last (5)
myq2.list.printList()
myq2.list.insertItem(value: 66, position: -1)// at index doesn't exists (7) [DOESN'T DO ANYTHING)
myq2.list.insertItem(value: 66, position: 7) // at index doesn't exists (-1) [DOESN'T DO ANYTHING)
myq2.list.printList()
//-----TEST CASES FOR INDEXOF METHOD-----
print(myq2.list.indexOf(88) as Any) // FIRST ITEM
print(myq2.list.indexOf(7) as Any)  // SOMEWHERE MIDDLE
print(myq2.list.indexOf(11) as Any) // LAST ITEM
print(myq2.list.indexOf(45) as Any) // DOESNT EXIST
//---TEST CASES FOR REMOVELAST METHOD----
print(myq2.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq2.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq2.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq2.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq2.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq2.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq2.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq2.list.removeLast() as Any) // EMPTY LIST RETURNS NIL

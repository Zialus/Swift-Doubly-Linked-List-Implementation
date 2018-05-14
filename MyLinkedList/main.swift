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
list.addItem(1)
list.printList()
list.addItem(2)
list.printList()
list.addItem(3)
list.printList()
list.add(7, position: 1)
list.printList()
list.printInverse()
list.add(8, position: 0)
list.printList()
list.removeItem(4)
list.printList()
list.replaceItem(9, position: 3)
list.printList()
print(list.getItemAt(4) as Any)

var myq = Queue<Int>()
//myq.enqueue(1)
//myq.enqueue(2)
//myq.enqueue(3)
//myq.list.printList()
//print(myq.list.count)
//print(myq.dequeue())
//print(myq.dequeue())
//print(myq.list.count)
//print(myq.dequeue())
//print(myq.list.count)
//print(myq.dequeue())
//myq.list.printList()
//myq.enqueue(1)
//myq.list.printList()
//print(myq.dequeue())
//print(myq.list.count)
//print(myq.dequeue())
//print(myq.list.count)
//print(myq.dequeue())
//print(myq.list.count)
//myq.list.printList()
//print(myq.list.count)
//myq.enqueue(1)
//print(myq.list.count)
//myq.list.printList()
//print(myq.list.count)
//myq.enqueue(7)
//myq.enqueue(3)
//myq.enqueue(6)
//myq.enqueue(9)
//myq.enqueue(4)
//myq.enqueue(2)
//myq.enqueue(1)
//myq.enqueue(22)
//myq.list.printList()
//print(myq.list.indexOf(23))
//print(myq.list.removeLast())
//print(myq.list.removeLast())
//print(myq.list.removeLast())
//print(myq.list.removeLast())
//print(myq.list.removeLast())
//print(myq.list.removeLast())
//print(myq.list.removeLast())
//print(myq.list.removeLast())
//print(myq.list.count)
//print(myq.list.removeLast())
//print(myq.list.count)
//print(myq.list.removeLast())
//print(myq.list.count)
//print(myq.list.removeLast())
//print(myq.list.count)


//------CREATE INITIAL QUEUE---------
myq.enqueue(5)
myq.enqueue(7)
myq.enqueue(9)
myq.enqueue(11)
myq.list.printList()
//-----TEST CASES FOR ADD METHOD-----
myq.list.add(88, position: 0) // at index 0
myq.list.printList()
myq.list.add(99, position: 3) // at index somewhere between (3)
myq.list.printList()
myq.list.add(77, position: 5) // at index of last (5)
myq.list.printList()
myq.list.add(66, position: -1)// at index doesn't exists (7) [DOESN'T DO ANYTHING)
myq.list.add(66, position: 7) // at index doesn't exists (-1) [DOESN'T DO ANYTHING)
myq.list.printList()
//-----TEST CASES FOR INDEXOF METHOD-----
print(myq.list.indexOf(88)) // FIRST ITEM
print(myq.list.indexOf(7))  // SOMEWHERE MIDDLE
print(myq.list.indexOf(11)) // LAST ITEM
print(myq.list.indexOf(45)) // DOESNT EXIST
//---TEST CASES FOR REMOVELAST METHOD----
print(myq.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq.list.removeLast() as Any) // REMOVES AND RETURNS
print(myq.list.removeLast() as Any) // EMPTY LIST RETURNS NIL

//
//  Queue.swift
//  QueueImplementation
//
//  Created by Ergin Bilgin on 28/09/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

class Queue<T:NSObject> {
    var list: MyLinkedList<T> = MyLinkedList<T>()
    
    init() {
    }
    
    func isEmpty() -> Bool {
        return self.list.isEmpty()
    }
    
    func enqueue(value: T) {
        list.addItem(value)
    }
    
    func dequeue() -> T? {
        if self.isEmpty(){
            return nil
        } else {
            let temp: T = list.getitemAt(0)!
            list.removeItem(0)
            return temp
        }
        
    }
}
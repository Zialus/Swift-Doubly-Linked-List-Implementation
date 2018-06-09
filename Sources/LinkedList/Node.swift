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

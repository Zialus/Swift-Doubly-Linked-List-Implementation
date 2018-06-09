import Foundation

public class Queue<T: Comparable> {
    public var list: LinkedList<T>

    public init() {
        self.list = LinkedList<T>()
    }

    var isEmpty: Bool {
        return self.list.isEmpty
    }

    public func enqueue(_ value: T) {
        list.addLast(value)
    }

    public func dequeue() -> T? {
        if self.isEmpty {
            return nil
        } else {
            let temp: T = list.getItem(at: 0)!
            list.removeItem(at: 0)
            return temp
        }

    }

}

//
//  main.swift
//  Benchmark scenarios for the Doubly Linked List and Queue.
//
//  Each invocation runs a single scenario, selected by name on the command
//  line, so that CodSpeed can measure every scenario as its own benchmark
//  (see codspeed.yml at the repository root).
//
//  Usage: Benchmarks <scenario>
//

import Foundation
import LinkedList

/// Prevents the optimizer from discarding results that are otherwise unused.
@inline(never)
func blackHole<T>(_ value: T) {
    withExtendedLifetime(value) {}
}

func makeList(size: Int) -> LinkedList<Int> {
    let list = LinkedList<Int>()
    for i in 0..<size {
        list.addLast(i)
    }
    return list
}

let scenarios: [String: () -> Void] = [
    // Appending to the tail is O(1); measure bulk construction.
    "add_last": {
        let list = makeList(size: 100_000)
        blackHole(list.count)
    },

    // Positional reads walk the list from the head.
    "get_item": {
        let size = 2_000
        let list = makeList(size: size)
        var sum = 0
        for i in stride(from: 0, to: size, by: 1) {
            sum &+= list.getItem(at: i)!
        }
        blackHole(sum)
    },

    // Linear search, both hits spread across the list and misses.
    "index_of": {
        let size = 2_000
        let list = makeList(size: size)
        var acc = 0
        for i in stride(from: 0, to: size, by: 2) {
            acc &+= list.indexOf(i) ?? -1
        }
        for _ in 0..<100 {
            acc &+= list.indexOf(-1) ?? -1
        }
        blackHole(acc)
    },

    // Inserting in the middle of a growing list.
    "insert_item_middle": {
        let list = makeList(size: 2)
        for i in 0..<2_000 {
            list.insertItem(value: i, position: list.count / 2)
        }
        blackHole(list.count)
    },

    // Inserting at the head is O(1).
    "insert_item_head": {
        let list = makeList(size: 1)
        for i in 0..<100_000 {
            list.insertItem(value: i, position: 0)
        }
        blackHole(list.count)
    },

    // Removing from the middle until the list is empty.
    "remove_item_middle": {
        let list = makeList(size: 2_000)
        while list.count > 0 {
            list.removeItem(at: list.count / 2)
        }
        blackHole(list.count)
    },

    // removeLast reads the tail through getItem before unlinking it.
    "remove_last": {
        let list = makeList(size: 2_000)
        var sum = 0
        while let value = list.removeLast() {
            sum &+= value
        }
        blackHole(sum)
    },

    // Overwriting values at every position.
    "replace_item": {
        let size = 2_000
        let list = makeList(size: size)
        for i in 0..<size {
            list.replaceItem(i * 2, position: i)
        }
        blackHole(list.getItem(at: size - 1))
    },

    // String rendering in both directions.
    "description": {
        let list = makeList(size: 20_000)
        blackHole(list.description.count &+ list.describeInverse.count)
    },

    // FIFO usage through the Queue wrapper.
    "queue_enqueue_dequeue": {
        let queue = Queue<Int>()
        let batch = Array(0..<1_000)
        var sum = 0
        for _ in 0..<50 {
            queue.enqueue(batch)
            while let value = queue.dequeue() {
                sum &+= value
            }
        }
        blackHole(sum)
    },
]

let arguments = CommandLine.arguments
guard arguments.count == 2, let scenario = scenarios[arguments[1]] else {
    let names = scenarios.keys.sorted().joined(separator: ", ")
    print("Usage: Benchmarks <scenario>\nAvailable scenarios: \(names)")
    exit(1)
}

scenario()

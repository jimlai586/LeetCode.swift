//
//  SWcommon.swift
//  SWcommon
//
//  Created by Raistlin on 2015/8/27.
//  Copyright © 2015年 Raistlin. All rights reserved.
//

import Foundation


public class Node<T:Equatable> {
    public var next:Node?
    public var data:T
    public init(data:T) {
        self.data = data
    }
    
    
    
    public func appendToTail(newData: T){
        
        var n = self
        while let t = n.next {
            n = t.next!
        }
        
        n.next = Node(data: newData)
        
    }
    
    public func deleteNode(head: Node, data: T) -> Node? {
        var n = head
        
        if head.data == data {
            return n.next
        }
        
        while let t = n.next {
            if t.data == data {
                n.next = t.next
                return head
            }
            n = n.next!
        }
        return head
        
    }
    
    public func deleteNodeAtIndex(head: Node, index: Int) -> Node? {
        var n:Node? = head
        for  _ in 0..<index {
            n = n?.next
        }
        return n
    }
    
    
    public class func printLL(head: Node?) {
        var cur = head
        while let n = cur {
            print(n.data)
            cur = n.next
        }
    }
    
}


public class stack<T:Equatable> {
    
    var top:Node<T>?
    public func push(data: T) {
        let n = Node(data: data)
        n.next = top
        top = n
        
    }
    
    public func pop() -> T? {
        let d = top?.data
        top = top?.next
        return d
    }
    
    public init() {
        
    }
    
}

public class queue<T:Equatable> {
    
    var first, last: Node<T>?
    public func enqueue(data:T) {
        let n = Node(data: data)
        first = first ?? n
        last?.next = n
        last = n
    }
    
    public func dequeue() -> T? {
        let data = first?.data
        first = first?.next
        return data
    }
    public func isEmpty() -> Bool {
        return first == nil
    }

    public var qSize : Int {
        var count = 0
        var current = first
        while let n = current {
            count++
            current = n.next
        }
        return count
    }
    public init() {
        
    }
    
}


public class Vertex : Equatable{
    public var isVisited = false
    public var adjEdges : [Edge]?
    public var dist = 1000
    public var val : String?
    public init() {}
    
}
public func ==(lhs: Vertex, rhs: Vertex) -> Bool {
    return lhs === rhs
}

public class Edge {
    public weak var neighbor:Vertex?
    public var weight:Int
    public init (weight:Int, v: Vertex) {
        self.weight = weight
        self.neighbor = v
    }
    
}

public class TreeNode {
    
    public var val : Int
    public var left : TreeNode?
    public var right : TreeNode?
    
    public init(item: Int) {
        val = item
    }
    
}



public class ListNode {
    
    public var val : Int
    public var next : ListNode?
    
    public init(item: Int) {
        val = item
    }
    
    public class func printLL(head: ListNode?) {
        var p = head
        while let n = p {
            print(p?.val)
            p = n.next
        }
    }
    
}


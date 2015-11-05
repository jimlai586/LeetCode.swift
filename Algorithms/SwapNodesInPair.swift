func swapNodes(head: Node<Int>?) -> Node<Int>?{
    
    var prev = head?.next
    var after = head
    let newHead = head?.next
    
    while let n = prev {
        let successor = n.next
        after?.next = successor?.next ?? successor
        prev?.next = after
        prev = successor?.next
        after = successor
        
    }
    
    
    return newHead
    
    
}

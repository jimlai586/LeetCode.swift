func removeNthFromEnd(head : ListNode, n : Int) -> ListNode {
    let m = n - 1
    var front : ListNode? = head
    var back : ListNode? = head
    
    
    for _ in 0 ..< m {
        back = back?.next
    }
    
    var prev : ListNode? = nil
    
    while let v = back?.next {
        back = v
        prev = front
        front = front?.next
        
    }
    
    if prev == nil {
        return (front?.next)!
    }
    prev?.next = front?.next
    return head
}

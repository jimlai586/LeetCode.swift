func reverseBetween(var head : ListNode, m : Int, n : Int) -> ListNode {
    
    
    guard n > m else {
        return head
    }
    
    
    var p1 = head
    var p2 = head.next
    var if1, if2, if3, if4 : ListNode?
    
    for i in 1 ..< n {
        
        let p3 = p2?.next
        
        if i == m - 1 {
            if1 = p1
        }
        if i == m {
            if3 = p1
        }
        
        if i == n - 1 {
            if4 = p3
            if2 = p2
            if m == 1 {
                head = if2!
            }
        }
        
        if i >= m {
            p2?.next = p1
            p1 = p2!
            p2 = p3
            continue
        }
        p1 = p1.next!
        p2 = p1.next
    }
    
    if1?.next = if2
    if3?.next = if4

    
    
    return head
}

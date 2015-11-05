func dupesRemove(head : ListNode) -> ListNode {

    var p = head
    let newhead = ListNode(item: 0)
    var np : ListNode? = newhead
    
    while let n = p.next {
        if n.val != p.val {

            np?.next = p
            np = np?.next
        }
        
        var pp = n
        while let v = pp.next where v.val == n.val {
            pp = v
        }
        if let v = pp.next {
            p = v
        }
        else {
            p = n
        }
        
    }
    
    np?.next = p
    np = np?.next
    np?.next = nil
    return newhead.next!
}

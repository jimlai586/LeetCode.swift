func hasCycle( head : ListNode) -> ListNode? {

    var p1 = head.next
    var p2 = head.next?.next
    
    var meet : ListNode? = nil
    
    while let v1 = p1, let v2 = p2 {
        if v1 === v2 {
            meet = v1
            break
        }
        p1 = p1?.next
        p2 = p2?.next?.next
    }
    
    p1 = head
    p2 = meet
    
    while let v1 = p1, let v2 = p2 {
        if v1 === v2 {
            return v1
        }
        p1 = p1?.next
        p2 = p2?.next
    }
    
    return nil
    
}

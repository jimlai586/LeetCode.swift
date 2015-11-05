func revLL2(head : ListNode?, start: Int, end: Int) -> ListNode? {
    
    
    var h = head
    
    for _ in 0 ..< start-2 {
        h = h?.next
    }

    let front = h
    let back = h?.next
    var p = back
    var pp = p?.next
    var ppp = p?.next
    
    for _ in 0 ..< end-start-1 {
        pp = ppp
        ppp = ppp?.next
        pp?.next = p
        p = pp
    }
    
    pp = ppp
    front?.next = pp
    ppp = ppp?.next
    pp?.next = p
    back?.next = ppp
    return start==1 ? back : head
    
}

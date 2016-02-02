func mergeTwoSortedLists(l1 : ListNode?, l2 : ListNode?) -> ListNode? {
    guard let l1 = l1 else {
        return l2
    }
    guard let l2 = l2 else {
        return l1
    }
    
    var p : ListNode? = l1
    var q : ListNode? = l2
    let ret = p?.val < q?.val ? p : q
    var r : ListNode? = ret
    p = p === r ? p?.next : p
    q = q === r ? q?.next : q
    while let pp = p, qq = q {
        r?.next = pp.val < qq.val ? pp : qq
        r = r?.next
        p = p === r ? p?.next : p
        q = q === r ? q?.next : q
    }
    while let pp = p {
        r?.next = pp
        r = r?.next
        p = p?.next
    }
    while let qq = q {
        r?.next = qq
        r = r?.next
        q = q?.next
    }
    
    return ret
}

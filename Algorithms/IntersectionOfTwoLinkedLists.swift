func findIntersec(lla : ListNode, llb : ListNode) -> ListNode? {
    
    
    var lena = 1
    var lenb = 1
    
    var pa = lla as ListNode?
    var pb = llb as ListNode?
    
    
    while let n = pa?.next {
        lena++
        pa = n
    }
    while let m = pb?.next {
        
        lenb++
        pb = m
    }
    
    pa = (lena > lenb) ? lla : llb
    pb = (lena > lenb) ? llb : lla
    let diff = lena > lenb ? lena-lenb : lenb-lena
    
    for _ in 0 ..< diff {
        pa = pa?.next
    }
    
    pa = lla
    pb = llb
    while let a = pa, b = pb {
        if a === b {
            return a
        }
        pa = pa?.next
        pb = pb?.next
    }
    return nil
}

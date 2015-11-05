func addTwoNums(num1 : ListNode, num2 : ListNode) -> ListNode {
    
    
    var p1 : ListNode? = num1
    var p2 : ListNode? = num2
    var carry = 0
    let head  = ListNode(item: 0)
    var s = head
    while let p = p1 ?? p2 {
        carry = sumTwoNodes(p, node2: p2, sumNode: s, carry: carry)
        s.next = ListNode(item: carry)
        s = s.next!
        p1 = p1?.next
        p2 = p2?.next
    }
    
    s.val = carry
    
    return head
}


func sumTwoNodes(node1 : ListNode?, node2 : ListNode?, sumNode : ListNode?, carry : Int) -> Int {
    
    let d1 = node1?.val ?? 0
    let d2 = node2?.val ?? 0
    let sum = (d1 + d2 + carry) % 10
    let carry = (d1 + d2 + carry) / 10
    sumNode?.val = sum
    return carry
}

func rightSideView(root: TreeNode) -> [Int] {
    
    var view = [Int]()

    var q1 = [TreeNode]()
    var q2 = [TreeNode]()
    q1.append(root)
    view.append(root.val)
    
    
    while q1.isEmpty == false || q2.isEmpty == false {
        
        while q1.isEmpty == false {
            
            let s = q1.removeFirst()
            if let left = s.left {
                q2.append(left)
            }
            if let right = s.right {
                q2.append(right)
            }
        }
        if let t = q2.last {
            view.append(t.val)
        }
        let q = q1
        q1 = q2
        q2 = q
        
    }
    
    
    return view

}

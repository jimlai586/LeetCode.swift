func flatBT(root : TreeNode?) {
    
    guard let root = root else {
        return
    }
    
    
    var p = root
    if let left = root.left {
        let iter = preorderIter(root: left)
        let r = root.right
        for v in iter {
            p.right = v
            p.left = nil
            p = v
            
        }
        p.right = r
        
    }
    
    
    if let right = root.right {
        print(right.val)
        flatBT(right)
    }
    
    
    
}



class preorderIter : GeneratorType, SequenceType {
    
    var root : TreeNode
    var iter : TreeNode?
    var stack = [TreeNode]()
    init(root : TreeNode) {
        self.root = root
        stack.append(self.root)
    }
    typealias Element = TreeNode
    func next() -> Element? {
        iter = stack.last
        if let _ = iter {
            stack.removeLast()
        }
        if let right = iter?.right {
            stack.append(right)
        }
        if let left = iter?.left {
            stack.append(left)
        }
        
        return iter
    }
    func generate() -> Self {
        return self
    }
}

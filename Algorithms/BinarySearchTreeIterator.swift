class BSTIterator : SequenceType, GeneratorType {
    
    var root:TreeNode
    var stack = [TreeNode]()
    
    init(root : TreeNode) {
        self.root = root
    }
    
    func next() -> Int? {
        guard stack.isEmpty == false else {
            return nil
        }
        
        let top = stack.removeLast()
        
        if let p = top.right {
            stack.append(p)
            
            var cur = p as TreeNode?
            while let n = cur?.left {
                
                stack.append(n)
                cur = n.left
                
                
            }
        }
        
        return top.val
        
        
    }
    
    func generate() -> BSTIterator {
        var p = root.left
        stack.removeAll()
        stack.append(root)
        while let n = p {
            stack.append(n)
            p = n.left
        }
        
        return self
    }
    

}

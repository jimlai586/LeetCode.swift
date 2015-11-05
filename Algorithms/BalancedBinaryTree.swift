func isBalanced(tree:TreeNode) -> Bool {
    
    var leftHeight, rightHeight : Int
    
    leftHeight = height(tree.left) ?? 0
    rightHeight = height(tree.right) ?? 0
    
    return leftHeight == rightHeight
    
}


func height(root: TreeNode?) -> Int? {
    
    guard let root = root else {
        return nil
    }
    
    var lh = 0, rh = 0
    if let l = height(root.left) {
        lh = l + 1
    }
    if let r = height(root.right) {
        rh = r + 1
    }
    return lh >= rh ? lh : rh
    
}

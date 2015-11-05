func subset(var nums : [Int]) -> [[Int]] {
    
    nums.sortInPlace(<)
    var sub = [Int]()
    var set = [[Int]]()
    var recur : ((Int) -> Void)? = nil
    recur = { index in
        guard case 0 ..< nums.count = index else {
            set.append(sub)
            return
        }
        
        recur!(index+1)
        sub.append(nums[index])
        recur!(index+1)
        sub.removeLast()
        
        
    }
    recur!(0)
    return set
}

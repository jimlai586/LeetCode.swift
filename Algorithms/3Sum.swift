func threeSum(nums : [Int], sum : Int) -> [[Int]]? {
    
    let sorted = quickSort(nums)
    var ret = [[Int]]()
    for i  in 0 ..< sorted.count {
        
        if i > 1 && sorted[i] == sorted[i-1] {
            continue
        }
        
        let r = twoSum(Array(sorted[i+1 ..< sorted.count]), sum: sum - sorted[i])
        for x in r {
            ret.append([sorted[i]] + x)
        }
    }
    
    
    
    return ret
}

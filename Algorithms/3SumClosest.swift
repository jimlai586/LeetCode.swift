func threeclosest (var nums : [Int], target: Int) -> Int {
    
    nums.sortInPlace()
    
    var closest = nums[0] + nums[1] + nums[2]
    var minDist = abs(target - closest)
    for i in 0 ..< nums.count - 2 {
        let t = target - nums[i]
        let r = twoclosest(nums[i+1 ..< nums.endIndex], target: t)
        let dist = abs(t-r)
        if dist < minDist {
            minDist = dist
            closest = r + nums[i]
        }
        
        
    }
    return closest
    
}

func twoclosest(nums : ArraySlice<Int>, target : Int) -> Int {
    
    var i = nums.startIndex
    var k = nums.endIndex-1
    var closest = nums[i] + nums[i+1]
    var dist = abs(target - closest)
    
    while i < k {
        let s = nums[i] + nums[k]
        var d = s - target
        switch d {
        case let x where x < 0:
            i++
        case let x where x > 0:
            k--
        default:
            return s
        }
        d = abs(d)
        closest = d < dist ? s : closest
        dist = d < dist ? d : dist
        
    }
    return closest
    
}

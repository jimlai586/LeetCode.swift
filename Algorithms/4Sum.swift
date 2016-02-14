func fourSum(var nums : [Int], target : Int) -> [[Int]] {
    nums.sortInPlace()
    var sols = [[Int]]()
    for (i,_) in nums.enumerate() {
        if i - 1 >= 0 && nums[i] == nums[i-1] {
            continue
        }
        for j in i+1 ..< nums.count {
            if j - 1 > i && nums[j] == nums[j-1] {
                continue
            }
            let left = target - nums[i] - nums[j]
            let sub = nums[(j+1) ..< nums.endIndex]
            let pairs = twoSum(Array(sub), target: left)
            if pairs.count > 0 {
                for p in pairs {
                    let sol = [nums[i], nums[j], p[0], p[1]]
                    sols.append(sol)
                }
            }
        }
    }
    return sols
}

func twoSum(nums : [Int], target : Int) -> [[Int]] {
    var d = [Int : Int]()
    var sols = [[Int]]()
    for (i,val) in nums.enumerate() {
        let s = target - val
        if let _ = d[s] {
            let sol = [s, val]
            if sols.isEmpty == true {
                sols.append(sol)
                continue
            }
            if sols[0][0] > s {
                sols.insert(sol, atIndex: 0)
                d[val] = i
            }
        }
    }
    return sols
}

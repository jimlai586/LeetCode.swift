func maxSubArray(nums : [Int]) -> Int? {
    guard nums.count >= 2 else {
        return nums.count == 1 ? nums[0] : nil
    }
    
    var i = 0
    var k = nums.count - 1
    var max = nums[0]
    var start = i
    var end = k
    
    var s1 = nums[i]
    var s2 = nums[k]
    
    while i < k {
        max = max < nums[i] ? nums[i] : max
        max = max < nums[k] ? nums[k] : max
        if s1 >= 0 && s2 >= 0 {
            i += 1
            k -= 1
            s1 += nums[i]
            s2 += nums[k]
            let m = s1 > s2 ? s1 : s2
            max = m > max ? m : max
            continue
        }
        if s1 < 0 {
            i += 1
            start = i
            s1 = nums[i]
        }
        if s2 < 0 {
            k -= 1
            end = k
            s2 = nums[k]
        }
    }
    if start >= end {
        if start == end {
            max = max < nums[start] ? nums[start] : max
        }
        return max
    }
    var sum = 0
    for v in nums[start ..< end+1] {
        sum += v
    }
    return sum > max ? sum : max
}

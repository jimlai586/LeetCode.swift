func removeElement(var nums : [Int], val : Int) -> Int {
    guard nums.count > 0 else {
        return 0
    }
    var i = 0
    var k = nums.count - 1
    var c = 0
    while i < k {
        if nums[k] == val {
            k -= 1
            c += 1
        }
        if nums[k] != val && nums[i] == val {
            let t = nums[k]
            nums[k] = nums[i]
            nums[i] = t
            k -= 1
            i += 1
            c += 1
        }
        if nums[i] != val {
            i += 1
        }
    }
    if nums[k] == val {
        c += 1
    }
    for _ in 0 ..< c {
        nums.popLast()
    }
    return nums.count
}

func maxWater(height : [Int]) -> Int {
    guard height.count >= 2 else {
        return 0
    }
    var area = 0
    var i = 0
    var k = height.count - 1

    while i < k {
        let hi = height[i]
        let hk = height[k]
        let a = min(hi, hk) * (k - i)
        area = a > area ? a : area
        if hi < hk {
            i += 1
        }
        else if hk < hi {
            k -= 1
        }
        else {
            i += 1
        }
    }
    return area
}

func betterGas(gasAt : [Int], cost : [Int]) -> Int {
    let num = gasAt.count
    var sum = 0
    var station = 0
    for i in 0 ..< num {
        let diff = gasAt[i] - cost[i]
        if sum + diff < 0 {
            sum = 0
            station = i + 1
            continue
        }
        sum += diff
    }
    if sum > 0 && station < num {
        for i in 0 ..< station-1 {
            let diff = gasAt[i] - cost[i]
            sum -= diff
            if sum < 0 {
                return -1
            }
        }
        return station
    }
    else {
        return -1
    }
}

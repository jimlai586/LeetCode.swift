func twoSum(arr: [Int], target: Int) -> [Int] {
    
    var dict = [Int: Int]()

    for i in 0 ..< arr.count {
        let u = arr[i]
        let v = target - u
        if let j = dict[v] {
            return i < j ? [i+1, j+1] : [j+1, i+1]
        }
        else {
            dict[u] = i
        }
    }
    
    return []
    
}

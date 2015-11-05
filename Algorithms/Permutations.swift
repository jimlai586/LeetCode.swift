func permu(num : [Int]) -> [[Int]] {
    
    let p = [Int]()
    pick(p, arr: num, index: num.count-1)
    return permutation
    
    
}

func pick(var num: [Int], var arr: [Int], index: Int) {
    
    guard case 0 ..< arr.count = index else {
        if index < 0 {
            permutation.append(num)
        }
        return
    }
    
    for i in 0 ..< arr.count {
        let t = arr.removeAtIndex(i)
        num.append(t)
        pick(num, arr: arr, index: index-1)
        num.removeLast()
        arr.insert(t, atIndex: i)
        
    }
    
}

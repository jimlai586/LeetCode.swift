enum someError : ErrorType {
    
    case Invalid
}


func maxProdSub(nums : [Int]) throws -> Int {
    
    guard nums.count >= 1 else {
        throw someError.Invalid
    }
    
    var prod = nums[0]
    
    for i in 0 ..< nums.count {
        for j in i ..< nums.count {
            let p = product(Array(nums[i ... j]))
            prod = p > prod ? p : prod
        }
        
    }
    return prod
    
}
func product(subarray : [Int]) -> Int {
    
    var p = 1
    for num in subarray {
        p *= num
    }
    return p
}

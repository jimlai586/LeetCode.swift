func isPalindrome(x : Int) -> Bool {
    if x < 0 {
        return false
    }
    
    
    let carr = String(x).characters
    var i = carr.startIndex
    var k = carr.endIndex.predecessor()
    
    while i < k {
        if carr[i] != carr[k] {
            return false
        }
        i = i.successor()
        k = k.predecessor()
    }
    return true
    
}

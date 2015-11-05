func reverseInt(var num:Int) -> Int {
    
    var signed = false
    signed = num >= 0 ? false : true
    
    if signed == true {
        num = -num
    }
    
    var rev = [String(num)].map() {
        String($0.characters.reverse())
    }
    
    
    print(rev[0])

    
    if signed == true {
        rev[0] = "-\(rev[0])"
    }
    return Int(rev[0])!
}

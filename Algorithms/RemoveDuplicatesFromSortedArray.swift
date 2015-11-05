func removeDuplicates(var dup: [Int]) {
    var p = 1
    var ori = dup[0]
    for i in 1 ..< dup.count {
        if dup[i] != ori {
            ori = dup[i]
            dup[p++] = dup[i]
            
        }
        else {
            continue
        }
    }
    print(dup)
    
}

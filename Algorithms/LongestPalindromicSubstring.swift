func longestSubStr(s: String) -> Int {
    
    let chars = s.characters
    var len = 1
    for index1 in s.startIndex ..< s.endIndex {
        var sub = String(chars[index1])
        for index2 in index1.successor() ..< s.endIndex {
            let a = chars[index2]
            if sub.characters.contains(a) == true {
                break
            }
            else {
                sub.append(a)
            }
        }
        if sub.characters.count > len {
            len = sub.characters.count
        }
    }
    return len
    
}

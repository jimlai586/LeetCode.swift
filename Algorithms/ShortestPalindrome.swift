extension String.CharacterView {

    subscript(index : Int) -> Character {
        return self[startIndex.advancedBy(index)]
    }
}


func betterShortestPalin(str : String) -> String {
    
    let rev_chars = str.characters.reverse()
    let mod_chars = (str + "#" + String(rev_chars)).characters
    var next = [Int](count: mod_chars.count, repeatedValue: 0)
    
    for i in 1 ..< next.count {
        var j = next[i-1]
        while j > 0 && mod_chars[i] != mod_chars[j] {
            j = next[j-1]
        }
        next[i] = mod_chars[i] == mod_chars[j] ? j+1 : j
    }
    next.last!
    return String(rev_chars).substringToIndex(str.startIndex.advancedBy(str.characters.count - next.last!)) + str
}

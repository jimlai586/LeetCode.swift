func longestCommonPrefix(strs: [String]) -> String {
    
    var shortest = strs[0].characters.count
    var prefix = ""
    for row in strs {
        let length = row.characters.count
        shortest = length < shortest ? length : shortest
    }
    for i in 0 ..< shortest {
        for j in 1 ..< strs.count {
            let y = strs.startIndex.advancedBy(j)
            let x = strs[y].startIndex.advancedBy(i)
            if strs[y][x] != strs[0][x] {
                break
            }
            
        }
        prefix.append(strs[0][strs[0].startIndex.advancedBy(i)])
    }

    return prefix
}

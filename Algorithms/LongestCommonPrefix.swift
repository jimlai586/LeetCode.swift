func lcp(arr: [String]) -> String {
    
    let initial = arr[0]


    let lcp = arr.reduce(initial) { (prefix, str) in
        
        for index in prefix.characters.indices {
            if prefix.characters[index] != str.characters[index] {
                return prefix.substringToIndex(index)
            }
        }
        
        return prefix
    }
    
    
    return lcp
    
}

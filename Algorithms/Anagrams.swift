func anagrams(angms : [String]) -> [[String]] {
    
    var arr_anas = [[String]]()
    for word in angms {
        
        var hasAnagram = false
        for var ana in arr_anas {
            if checkAnagram(ana.first!, ana2: word) == true {
                ana.append(word)
                hasAnagram = true
            }
        }
        if hasAnagram == false {
            arr_anas.append([word])
        }
    }
    
    return arr_anas
}

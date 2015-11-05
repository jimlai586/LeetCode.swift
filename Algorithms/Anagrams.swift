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

func checkAnagram(ana1: String, ana2: String) -> Bool {
    
    let a1 = ana1.characters
    var a2 = ana2.characters
    
    for char in a1 {
        if let index = a2.indexOf(char){
            a2.removeAtIndex(index)
        }
        
    }
    return a2.count == 0 ? true : false
    
}

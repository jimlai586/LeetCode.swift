func letterCombinations(digits : String) -> [String] {
    if digits == "" {
        return []
    }
    var keymap = [Character : [Character]]()
    keymap["2"] = ["a", "b", "c"]
    keymap["3"] = ["d", "e", "f"]
    keymap["4"] = ["g", "h", "i"]
    keymap["5"] = ["j", "k", "l"]
    keymap["6"] = ["m", "n", "o"]
    keymap["7"] = ["p", "q", "r", "s"]
    keymap["8"] = ["t", "u", "v"]
    keymap["9"] = ["w", "x", "y", "z"]
    var allcombis = [String]()
    var combi = [Character]()
    keys(digits, allcombis: &allcombis, combi: &combi, keymap: &keymap)
    return allcombis
}

func keys(digits : String, inout allcombis : [String], inout combi : [Character], inout keymap : [Character : [Character]]) {
    if digits == "" {
        allcombis.append(String(combi))
        return
    }

    let s = digits.characters.first!
    let chars = keymap[s]
    for c in chars! {
        combi.append(c)
        keys(digits.substringFromIndex(digits.startIndex.advancedBy(1)), allcombis: &allcombis, combi: &combi, keymap: &keymap)
        combi.popLast()
    }
}

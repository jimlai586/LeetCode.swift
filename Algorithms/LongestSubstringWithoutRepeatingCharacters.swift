extension String.CharacterView {
    
    subscript(index: Int) -> Character? {
        guard case 0 ..< count = index else {
            return nil
        }
        return self[startIndex.advancedBy(index)]
        
    }
}



func subWithoutRepeating(s : String) -> Int {
    
    
    var d = Dictionary<Character, String.CharacterView.Index>()
    var max = 0
    let chars = s.characters
    var start = s.startIndex
    for var i = s.startIndex; i < s.endIndex ; i = i.successor() {
        let c = chars[i]
        let count = start.distanceTo(i)
        if let v = d[c] where v >= start {
            max = count > max ? count : max
            start = v.successor()
            
        }
        else {
            max = count + 1 > max ? count + 1 : max
        }
        d[c] = i
    }

    return max

}

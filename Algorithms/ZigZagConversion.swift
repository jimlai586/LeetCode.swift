func zigzag(s : String, rows : Int) -> String {
    
    let chars = s.characters
    var arr = [[Character]](count: rows, repeatedValue: [Character]())
    
    var r = 0
    var inc = -1
    
    for i in chars.indices {
        let c = chars[i]
        if rows == 1 {
            r = 0
        }
        if r == 0 || r == (rows - 1) {
            inc = -inc
        }
        arr[r].append(c)
        r += inc
        
    }
    var z = ""
    for i in 0 ..< rows {
        z += String(arr[i])
    }
    
    
    return z
}

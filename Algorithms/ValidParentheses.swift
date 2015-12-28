func isvalid(s : String) -> Bool {
    
    var stack = [Character]()
    stack.append(s[s.startIndex])
    
    let i = s.startIndex.advancedBy(1)
    for c in s.substringFromIndex(i).characters {
        if c == "{" || c == "[" || c == "(" {
            stack.append(c)
        }
        else if stack.count != 0{
            let r = stack.last!
            if c == "}" && r == "{" || ( c == "]" && r == "[") || (c == ")" && r == "(") {
                stack.popLast()
            }
            else {
                return false
            }
            
        }
        else {
            return false
        }
    }
    if stack.count != 0 {
        return false
    }
    
    return true
}

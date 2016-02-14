func countAndSay(n : Int) -> String {
    let r = say(["1"], nth: n)
    return String(r)
}

func say(s : [String], nth : Int) -> [String] {
    if nth <= 1 {
        return s
    }
    var p = s[0]
    var next = [String]()
    var j = 0

    for (i,c) in s.enumerate() {
        if c != p {
            next.append(String(i - j))
            next.append(p)
            p = c
            j = i
        }
        if i == s.count - 1 {
            next.append(String(i - j + 1))
            next.append(c)
        }
    }
    return say(next, nth: nth - 1)
}

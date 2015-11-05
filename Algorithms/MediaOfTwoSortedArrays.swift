func findMed(a: ArraySlice<Int>, b: ArraySlice<Int>, n : Int) -> Int {

    if a.count > b.count {
        return findMed(b, b: a, n: n)
    }
    
    if a.count == 0 {
        return b.at(n-1)
    }
    
    if n == 1 {
        return min(a.at(0), b.at(0))
    }
    
    let ma = min(n/2, a.count)
    let mb = n - ma
    
    if a.at(ma-1) > b.at(mb-1) {
        return findMed(a, b: b.slice(mb, end: b.count), n: n - mb)
    }
    else if a.at(ma-1) == b.at(mb-1) {
        return a.at(ma-1)
    }
    else {
        
        return findMed(a.slice(ma, end: a.count), b: b, n: n - ma)
    }
    
    
}

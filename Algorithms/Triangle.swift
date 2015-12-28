func minimumTotal(triangle : [[Int]]) -> Int {
    
    let n = triangle.last!.count
    var sps = triangle[0] + [Int](count: n - triangle[0].count, repeatedValue: 0)
    
    for i in 0 ..< triangle.count - 1 {
        var v = [Bool](count: n, repeatedValue: false)
        var t = [Int](count: n, repeatedValue: 0)
        
        for j in 0 ..< triangle[i].count {
            let a = sps[j] + triangle[i+1][j]
            let b = sps[j] + triangle[i+1][j+1]
            if v[j] == true {
                t[j] = a
                v[j] = false
            }
            if v[j+1] == true {
                t[j+1] = b
                v[j+1] = false
                
            }
            t[j] = a < t[j] ? a : t[j]
            t[j+1] = b < t[j+1] ? b : t[j+1]
            
        }
        
        for j in 0 ..< n {
            sps[j] = t[j]
        }
        
        
        
    }
    var sp = sps[0]
    for i in 0 ..< n {
        sp = sps[i] < sp ? sps[i] : sp
    }
    return sp
    
}

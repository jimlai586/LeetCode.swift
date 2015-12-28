func getRow(rowIndex : Int) -> [Int]? {
    
    
    if rowIndex < 0 {
        return nil
    }
    
    if rowIndex == 0 {
        return [1]
    }
    if rowIndex == 1 {
        return [1,1]
    }
    
    var tri = [1,1]
    row(&tri, nth: 2, m: rowIndex + 1)
    return tri
    
}

func row(inout tri : [Int], nth : Int, m : Int) {
    
    if nth == m {
        return
    }
    
    for i in 0 ..< nth - 1 {
        tri[i] += tri[i+1]
    }
    
    tri.insert(1, atIndex: 0)
    row(&tri, nth: nth + 1, m: m)
    
}

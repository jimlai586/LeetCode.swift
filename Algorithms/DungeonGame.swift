func myMin(a : Int, b:Int) -> Int {

    return a < b ? a : b
}

func minLife(life : Int) -> Int {
    
    return life < 0 ? 1 - life : life
}

func rescue(dungeon : [[Int]]) -> Int {
    
    var minH : ( (Int, Int) -> Int)? = nil
    minH = {
        (x,y) in
        if case (x,y) = (dungeon[0].count-1, dungeon.count-1) {
            return dungeon[x][y] <= 0 ? 1 - dungeon[x][y] : 1
        }
        
        if x == dungeon[0].count-1 {
            return minLife(minH!(x, y+1) - dungeon[x][y])
        }
        
        if y == dungeon.count-1 {
            return minLife(minH!(x+1, y) - dungeon[x][y])
        }
        
        return minLife(myMin(minH!(x+1,y), b: minH!(x,y+1)) - dungeon[x][y])
    }
    let minHealth = minLife(myMin(minH!(1,0), b: minH!(0,1)) - dungeon[0][0])
    
    return minHealth
}

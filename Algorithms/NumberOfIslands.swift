func islands(grid : [[Int]]) -> Int {

    guard let width = grid.first?.count else {
        return 0
    }
    let height = grid.count
    
    let gridSize = (width+2) * (height+2)
    var map = [Int](count: gridSize, repeatedValue: 0)
    
    for i in width+3 ... map.count {
        let h = i/(width+2)
        let w = i%(width+2)
        guard case 1 ... height = h, case 1 ... width = w else {
            continue
        }
        map[i] = grid[h-1][w-1]
        
    }

    var islands = [Int]()
    var tag = 10
    for i in width+3 ... map.count {
        let h = i/(width+2)
        let w = i%(width+2)
        guard case 1 ... height = h, case 1 ... width = w else {
            continue
        }
        
        
        let up = i - (width+2)
        let left = i-1
        
        
        if map[i] == 1 && map[up] > 1 {
            map[i] = map[up]
        }
        if map[i] == 1 && map[left] > 1 {
            map[i] = map[left]
        }
        
        if map[i] > 1 && map[left] > 1 && map[i] != map[left] {
            if let index = islands.indexOf(map[left]) {
                islands.removeAtIndex(index)
            }
            
        }
        
        if map[i] == 1 {
            map[i] = tag++
            islands.append(map[i])
        }
            
        
    }
    map
    return islands.count
    
}

func rob(houses : [Int]) -> Int {
    var profit = 0
    var robbed = [Bool](count: houses.count+2, repeatedValue: false)
    robbed[0] = true

    
    func robbing(index: Int, var money: Int) {
        guard case 2 ..< houses.count+1 = index else {
            if index == houses.count+1  {
                if robbed[2] == true || robbed[index-1] == true {
                    profit = (money > profit) ? money : profit
                }
                else {
                    
                    let total = money + houses[index-2]
                    profit = (total > profit) ? total : profit
                }
            }

            return
            
        }
        
        if robbed[index-1] == false && robbed[index-2] == false {
            robbed[index] = true
            money += houses[index-2]
            robbing(index+1, money: money)
        }
        else if robbed[index-1] == false && robbed[index-2] == true {
            // this is to fix the shortcut usage of robbed[0] robbed[1]
            robbed[1] = true
            
            
            robbed[index] = false
            robbing(index+1, money: money)
            robbed[index] = true
            money += houses[index-2]
            robbing(index+1, money: money)
        }
        else {
            robbed[index] = false
            robbing(index+1, money: money)
        }
        
        
    }
    
    robbing(2, money: 0)

    return profit
}

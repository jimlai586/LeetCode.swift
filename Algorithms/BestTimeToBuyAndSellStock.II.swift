func maxProfit2(prices : [Int]) -> Int? {
    
    
    if prices.count == 1 {
        return nil
    }
    
    
    if prices.count == 2 {
        return prices[1] > prices[0] ? prices[1] - prices[0] : 0
    }
    
    var inc : Bool? = nil
    var prev : Bool? = nil
    var keepinc : Bool? = nil
    var se = 0
    var bs = 0
    var profit = 0
    
    for i in 0 ..< prices.count - 1 {
        prev = inc
        let p1 = prices[i]
        let p2 = prices[i+1]
        if p2 > p1 {
            inc = true
        }
        else {
            inc = false
            keepinc = false
        }
        
        if prev == true && inc == false {
            se = i
            profit += prices[se] - prices[bs]
        }
        
        if prev == false && inc == true {
            bs = i
            keepinc = true
        }
    }
    
    if keepinc == true {
        profit += prices.last! - prices[bs]
        
    }
    
    return profit
    
}

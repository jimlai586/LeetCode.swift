func maxProfit(prices : [Int]) -> Int? {
    
    var low = prices[0]
    var profit = 0

    
    if prices.count == 1 {
        return nil
    }
    
    for i in 1 ..< prices.count {
        
        let p1 = prices[i] > low ? prices[i] - low : 0
        profit = p1 > profit ? p1 : profit
        if low > prices[i] {
            low = prices[i]
        }
    }
    
    return profit
}

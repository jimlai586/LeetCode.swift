enum Left {
    case larger
    case smaller
}
enum Right {
    case larger
    case smaller
}

func candy(rating : [Int]) -> Int {
    
    var candies = [Int](count: rating.count, repeatedValue: 1)
    var candyAtIndex : ((Int) throws -> Int)? = nil
    candyAtIndex = {
        (index: Int) throws -> Int in
        guard case 1 ..< rating.count-1 = index else {
            if index == rating.count-1 && rating[index-1] >= rating[index] {
                return candies[index]
            }
            if index == rating.count-1 && rating[index-1] < rating[index] {
                candies[index] = candies[index-1] + 1
                print("haha")
                return candies[index]
            }
            throw someError.Invalid
        }
    
        let left = rating[index-1] > rating[index] ? Left.smaller : Left.larger
        let right = rating[index+1] > rating[index] ? Right.smaller : Right.larger
        
        let lval = candies[index-1]
        let rval = candies[index+1]
        if left == Left.larger && right == Right.larger {
            candies[index] = lval+1 > rval+1 ? lval+1 : rval+1
            try candyAtIndex!(index+1)
        }
        else if left == Left.larger && right == Right.smaller {
            candies[index] = candies[index-1] + 1
            try candyAtIndex!(index+1)
        }
        else if left == Left.smaller && right == Right.larger {
            candies[index] = try candyAtIndex!(index+1) + 1
        }
        else {
            candies[index] = candies[index]
            try candyAtIndex!(index+1)
        }
        
        return candies[index]
    }
    
    guard rating.count > 1 else {
        return candies[0]
    }
    
    do {
        
        if rating[1] >= rating[0] {
            try candyAtIndex!(1)
            
        }
        else {
            candies[0] = try candyAtIndex!(1) + 1
        }
    }
    catch {
        print("weird!")
    }
    
    print(candies)
    return candies.reduce(0, combine: +)
}


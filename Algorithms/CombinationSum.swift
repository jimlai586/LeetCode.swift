func combiSum(let num : [Int], target : Int, var stack: [Int]) {
    let sum = stack.reduce(0, combine: +)
    guard sum < target else {
        if sum == target {
            sols.append(stack)
        }
        return
    }
    
    for n in num {
        stack.append(n)
        combiSum(num, target: target, stack: stack)
        stack.removeLast()
    }
    
}




let testCombi = [2,3,6,7]
combiSum(testCombi, target: 7, stack: [Int]())
var compactSols = [[Int]]()

for var sol in sols {
    sol.sortInPlace()

    
    if compactSols.contains({ return $0 == sol }) == false {
        compactSols.append(sol)
    }
    
}

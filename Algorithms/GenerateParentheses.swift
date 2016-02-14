func generateParenthesis(n : Int) -> [String] {
    var numofparens = [n, n]
    var leftmatch = 0
    var parens = [String]()
    var paren = [Character]()
    generate(&parens, paren: &paren, numofparens: &numofparens, leftmatch: &leftmatch)
    return parens
}
func generate(inout parens : [String], inout paren : [Character], inout numofparens : [Int], inout leftmatch : Int) {
    if numofparens[0] == 0 && numofparens[1] == 0 {
        parens.append(String(paren))
        return
    }
    if leftmatch > 0 {
        if numofparens[0] > 0 {
            paren.append("(")
            ctrl(0, inc: -1, leftmatch: &leftmatch, numofparens: &numofparens)
            generate(&parens, paren: &paren, numofparens: &numofparens, leftmatch: &leftmatch)
            paren.popLast()
            ctrl(0, inc: 1, leftmatch: &leftmatch, numofparens: &numofparens)
        }
        if numofparens[1] > 0 {
            paren.append(")")
            ctrl(1, inc: -1, leftmatch: &leftmatch, numofparens: &numofparens)
            generate(&parens, paren: &paren, numofparens: &numofparens, leftmatch: &leftmatch)
            paren.popLast()
            ctrl(1, inc: 1, leftmatch: &leftmatch, numofparens: &numofparens)
        }
    }
    else {
        paren.append("(")
        ctrl(0, inc: -1, leftmatch: &leftmatch, numofparens: &numofparens)
        generate(&parens, paren: &paren, numofparens: &numofparens, leftmatch: &leftmatch)
        paren.popLast()
        ctrl(0, inc: 1, leftmatch: &leftmatch, numofparens: &numofparens)
    }
}
func ctrl(lefttoright : Int, inc : Int, inout leftmatch : Int, inout numofparens : [Int]) {
    numofparens[lefttoright] += inc
    if lefttoright == 0 {
        leftmatch -= inc
    }
    else {
        leftmatch += inc
    }
}

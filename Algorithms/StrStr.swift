//
//  StrStr.swift
//  LeetCode
//
//  Created by Lex Tang on 5/4/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

/*
Implement strStr().

Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Update (2014-11-02):
The signature of the function had been updated to return the index instead of the pointer. If you still see your function signature returns a char * or String, please click the reload button  to reset your code definition.
*/

import Foundation


// Brute Force
// Time complexity：O(mn), Space complexity: O(1)
func strStr0(haystack: String, needle: String) -> Int {
    let m = count(haystack), n = count(needle)
    if n > 0 {
        for var i = 0, j = 0; i < m - n; ++i {
            for ; j < n && haystack[i + j] == needle[j]; ++j {}
            if (j == n) {
                return i
            }
        }
    }
    return -1
}


// TODO: KMP


// TODO: Boyer Moore


// TODO: Rabin Karp



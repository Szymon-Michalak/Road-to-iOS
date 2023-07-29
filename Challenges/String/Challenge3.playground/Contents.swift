//Challenge 3: Do two strings contain the same characters?
//Difficulty: Easy
//Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
//Sample input and output
//• The strings “abca” and “abca” should return true.
//• The strings “abc” and “cba” should return true.
//• The strings “ a1 b2 ” and “ b1 a2 ” should return true.
//• The strings “abc” and “abca” should return false.
//• The strings “abc” and “Abc” should return false.
//• The strings “abc” and “cbAa” should return false.
//• The strings “abcc” and “abca” should return false.
import Cocoa

func challenge3(string1: String, string2: String) -> Bool {
    if string1.count != string2.count {
        return false
    }
    return string1.sorted() == string2.sorted()
}

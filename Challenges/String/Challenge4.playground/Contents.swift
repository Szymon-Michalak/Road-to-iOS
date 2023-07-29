//Challenge 4: Does one string contain another?
//Difficulty: Easy

//Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.

//Sample input and output
//• The code "Hello, world".fuzzyContains("Hello") should return true.
//• The code "Hello, world".fuzzyContains("WORLD") should return true.
//• The code "Hello, world".fuzzyContains("Goodbye") should return false.

import Cocoa

func challenge4(input: String, contains: String) -> Bool {
    return input.lowercased().range(of: contains.lowercased())==nil ? false : true
}

assert(challenge4(input: "Hello, world", contains: "Hello"), "Test 1 failed")
assert(challenge4(input: "Hello, world", contains: "WORLD"), "Test 2 failed")
assert(!challenge4(input: "Hello, world", contains: "Goodbye"), "Test 3 failed")

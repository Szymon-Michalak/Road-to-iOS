//Challenge 6: Remove duplicate letters from a string
//Difficulty: Easy

//Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
//Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.

//Sample input and output
//• The string “wombat” should print “wombat”.
//• The string “hello” should print “helo”.
//• The string “Mississippi” should print “Misp”.
import Cocoa

//using for in loop
func removeDuplicateLetters1(input: String) -> String {
    var modifiedInput: String = ""
    
    for character in input {
        if !modifiedInput.contains(character) {
            modifiedInput.append(character)
        }
    }
    
    return modifiedInput
}

//using reduce
func removeDuplicateLetters2(input: String) -> String {
    return input.reduce("") {
        $0.contains($1) ? $0 : $0 + String($1)
    }
}

//using filter
func removeDuplicateLetters3(input: String) -> String {
    var used = [Character: Bool]()
    
    return String(input.filter {
        used.updateValue(true, forKey: $0) == nil
    })
}

//using NSOrderedSet
func removeDuplicateLetters4(input: String) -> String {
    let array = input.map { String($0)}
    let orderedSet = NSOrderedSet(array: array)
    
    let letters = Array(orderedSet) as! [String]
    return letters.joined()
}

//tests
assert(removeDuplicateLetters1(input: "wombat") == "wombat", "Test 1a failed")
assert(removeDuplicateLetters1(input: "hello") == "helo", "Test 2a failed")
assert(removeDuplicateLetters1(input: "Mississippi") == "Misp", "Test 3a failed")

assert(removeDuplicateLetters2(input: "wombat") == "wombat", "Test 1b failed")
assert(removeDuplicateLetters2(input: "hello") == "helo", "Test 2b failed")
assert(removeDuplicateLetters2(input: "Mississippi") == "Misp", "Test 3b failed")

assert(removeDuplicateLetters3(input: "wombat") == "wombat", "Test 1c failed")
assert(removeDuplicateLetters3(input: "hello") == "helo", "Test 2c failed")
assert(removeDuplicateLetters3(input: "Mississippi") == "Misp", "Test 3c failed")

assert(removeDuplicateLetters4(input: "wombat") == "wombat", "Test 1d failed")
assert(removeDuplicateLetters4(input: "hello") == "helo", "Test 2d failed")
assert(removeDuplicateLetters4(input: "Mississippi") == "Misp", "Test 3d failed")





print("All tests passed")
      

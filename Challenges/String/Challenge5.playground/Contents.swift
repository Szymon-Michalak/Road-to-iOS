//Challenge 5: Count the characters
//Difficulty: Easy

//Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
//Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.

//Sample input and output
//• The letter “a” appears twice in “The rain in Spain”.
//• The letter “i” appears four times in “Mississippi”.
//• The letter “i” appears three times in “Hacking with Swift”.
import Cocoa



//Using for in
func countCharacters1(input: String, countOf: Character) -> Int {
    var count = 0
    
    for character in input {
        if character == countOf {
            count += 1
        }
    }
    
    return count
}

//Using reduce
func countCharacters2(input: String, countOf: Character) -> Int {
    return input.reduce(0) { $1 == countOf ? $0 + 1 : $0 }
}

//Using filter
func countCharacters3(input: String, countOf: Character) -> Int {
    return input.filter { $0 == countOf }.count
}

//Using NSCountedSet
func countCharacters4(input: String, countOf: Character) -> Int {
    let array = Array(input)
    let countedSet = NSCountedSet(array: array)
    return countedSet.count(for: countOf)
}

//Using replacingOccurrences
func countCharacters5(input: String, countOf: Character) -> Int {
    return input.count - input.replacingOccurrences(of: String(countOf), with: "").count
}

//Test
assert(countCharacters1(input: "The rain in Spain", countOf: "a") == 2, "Test 1a failed")
assert(countCharacters1(input: "Mississippi", countOf: "i") == 4, "Test 2a failed")
assert(countCharacters1(input: "Hacking with Swift", countOf: "i") == 3, "Test 3a failed")

assert(countCharacters2(input: "The rain in Spain", countOf: "a") == 2, "Test 1b failed")
assert(countCharacters2(input: "Mississippi", countOf: "i") == 4, "Test 2b failed")
assert(countCharacters2(input: "Hacking with Swift", countOf: "i") == 3, "Test 3b failed")

assert(countCharacters3(input: "The rain in Spain", countOf: "a") == 2, "Test 1c failed")
assert(countCharacters3(input: "Mississippi", countOf: "i") == 4, "Test 2c failed")
assert(countCharacters3(input: "Hacking with Swift", countOf: "i") == 3, "Test 3c failed")

assert(countCharacters4(input: "The rain in Spain", countOf: "a") == 2, "Test 1d failed")
assert(countCharacters4(input: "Mississippi", countOf: "i") == 4, "Test 2d failed")
assert(countCharacters4(input: "Hacking with Swift", countOf: "i") == 3, "Test 3d failed")

assert(countCharacters5(input: "The rain in Spain", countOf: "a") == 2, "Test 1e failed")
assert(countCharacters5(input: "Mississippi", countOf: "i") == 4, "Test 2e failed")
assert(countCharacters5(input: "Hacking with Swift", countOf: "i") == 3, "Test 3e failed")

print("All tests passed")



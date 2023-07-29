//Challenge 7: Condense whitespace
//Difficulty: Easy

//Write a function that returns a string with any consecutive spaces replaced with a single space.

//Sample input and output
//I’ve marked spaces using “[space]” below for visual purposes:
//• The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
//• The string “[space][space][space][space]a” should return “[space]a”.
//• The string “abc” should return “abc”.
import Cocoa


//using seenSpace as a flag
func condenseWhitespace1(input: String) -> String {
    var seenSpace = false
    var returnValue: String = ""
    
    for letter in input {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    
    return returnValue
}

//using RegEx
func codenseWhitespace2(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

//using components
func condenseWhitespace3(input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}

//using reduce



//tests
assert(condenseWhitespace1(input: "a   b   c") == "a b c", "Test 1a failed")
assert(condenseWhitespace1(input: "    a") == " a", "Test 1b failed")
assert(condenseWhitespace1(input: "abc") == "abc", "Test 1c failed")

assert(codenseWhitespace2(input: "a   b   c") == "a b c", "Test 2a failed")
assert(codenseWhitespace2(input: "    a") == " a", "Test 2b failed")
assert(codenseWhitespace2(input: "abc") == "abc", "Test 2c failed")

assert(condenseWhitespace3(input: "a   b   c") == "a b c", "Test 3a failed")
assert(condenseWhitespace3(input: "    a") == " a", "Test 3b failed")
assert(condenseWhitespace3(input: "abc") == "abc", "Test 3c failed")



print("All tests passed")

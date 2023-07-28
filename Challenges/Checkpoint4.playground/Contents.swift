import Cocoa

//The challenge is this: write a function that accepts an integer from 1 through
//10,000, and returns the integer square root of that number. That sounds easy,
//but there are some catches:
//
//You can’t use Swift’s built-in sqrt() function or similar – you need to find the
//square root yourself. If the number is less than 1 or greater than 10,000 you
//should throw an “out of bounds” error. You should only consider integer square
//roots – don’t worry about the square root of 3 being 1.732, for example. If you
//can’t find the square root, throw a “no root” error.
//

func calculateSquareRoot(number: Int) throws -> Int {
    guard number >= 1 && number <= 10_000 else {
        throw NSError(domain: "out of bounds", code: 0, userInfo: nil)
    }
    
    var result = 0
    for i in 1...Int(sqrt(Double(number))) {
        if i * i == number {
            result = i
            break
        }
    }
    
    if result == 0 {
        throw NSError(domain: "not a perfect square", code: 0, userInfo: nil)
    }
    
    return result
}


try calculateSquareRoot(number: 225)


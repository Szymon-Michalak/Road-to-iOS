import Cocoa

func challenge2(input: String) -> Bool {
    let lowercased = input.lowercased()
    let reversed = String(lowercased.reversed())
    return lowercased == reversed
}

assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")

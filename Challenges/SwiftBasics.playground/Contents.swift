import Cocoa

func Checkpoin1() -> Void {
    var arrayOfStrings = ["lol", "haha", "xD", "lol"]

    print(arrayOfStrings.count)

    print(Set(arrayOfStrings).count)
}

Checkpoin1()

func Loops() -> Void {
    let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

    for os in platforms {
        print("Swift works great on \(os).")
    }
}

Loops()


func FizzBuzz() -> Void {
    for i in 1...100 {
        if i.isMultiple(of: 15) {
            print("FizzBuzz")
        }
        else if i.isMultiple(of: 3) {
            print("Fizz")
        }
        else if i.isMultiple(of: 5) {
            print("Buzz")
        }
        else {
            print(i)
        }
    }
}

FizzBuzz()

import Cocoa

func challenge3(string1: String, string2: String) -> Bool {
    if string1.count != string2.count {
        return false
    }
    return string1.sorted() == string2.sorted()
}

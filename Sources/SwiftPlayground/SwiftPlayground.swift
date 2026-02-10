// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("please enter a noun: ")
        let noun = readLine()!
        
        print("please enter a verb: ")
        let verb = readLine()!

        print("please enter an adjective")
        let adjective = readLine()!

        let sausage = ("Once upon a time there was a \(noun) that was a \(verb) hello hellow nutty egg \(adjective)")

        print(sausage)

    
    }
}
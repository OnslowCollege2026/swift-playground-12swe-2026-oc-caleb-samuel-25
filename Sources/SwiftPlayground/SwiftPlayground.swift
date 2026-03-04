@main
struct SwiftPlayground {
    static func main() {
        let temp = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9, 10, 11, 12],

        ]
        let firstRow = temp[0]
        let secondRow = temp[1]
        let thirdRow = temp[2]
        
        let value = temp[2][3]
        let data = temp[3][2]

        print(firstRow)
        print(secondRow)
        print(thirdRow)

        print(value)
        print(data)

        let average = 5 + 6 + 7 + 8
    }
}

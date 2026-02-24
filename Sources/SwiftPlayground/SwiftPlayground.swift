func print(board: [[String]]) {
    board.forEach { line in
        print("\(line[0]) | \(line[1]) | \(line[2])")
    }
    print("--+--+--")
}

func askForPosition(board: [[String]]) -> [Int] {
    while true {
        print("Please enter the column number 1 - 3: ")
        let userInput = readLine()!
        let rowNumber = Int(userInput)! - 1

        print("Please enter the column number 1 - 3: ")
        let userInput = readLine()!
        let columnNumber = Int(userInput)! - 1

        if board[rowNumber][columnNumber] == "," {
            return [rowNumber, columnNumber]
        }
    }
}

@main
struct SwiftPlayground {
    static func main() {
        // var board = [
        //     [".", ".", "."],  // row zero
        //     [".", ".", "."],  // row one
        //     [".", ".", "."],  // row two
        // ]
        // print(board: board)

        // // first move O in middle
        // board[1][1] = "0"
        // print(board: board)

        // // second move X in top left
        // board[0][0] = "X"
        // print(board: board)

        // // third move top right
        // board[0][2] = "O"
        // print(board: board)

        // // fourth move bottom left
        // board[2][0] = "X"
        // print(board: board)

        // // fifth move middle left
        // board[1][0] = "O"
        // print(board: board)

        // // sixth move middle right
        // board[1][2] = "X"
        // print(board: board)

        // // seventh move middle bottom
        // board[2][1] = "O"
        // print(board: board)

        // // eigth move bottom right
        // board[2][2] = "X"
        // print(board: board)

        // // ninth move middle top
        // board[0][1] = "O"
        // print(board: board)
    }
}

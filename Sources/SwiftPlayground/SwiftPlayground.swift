func columnTotal(in table: [[Int]], column: Int) -> Int {
    var total = 0
    for row in table {
        if row.count > column {
            total += row[column]
        }
    }
    return total
}

func maxValue(in readings: [[Double]]) -> Double? {

    if readings.isEmpty {
        return nil
    }
    var biggest = 0.0
    for row in readings {
        for value in row {
            if value > biggest {
                biggest = value
            }
        }
    }
    return biggest
}

@main
struct SwiftPlayground {
    static func main() {
        let temp = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9, 10, 11, 12],

        ]
        let firstRow = temp[0]
        let value2 = temp[2][3]
        let value3 = temp[2][0]

        print(firstRow)

        print(value2)
        print(value3)

        let total = temp[1][0] + temp[1][1] + temp[1][2] + temp[1][3]
        let average = total / 4

        print(average)

        let table = [
            [2, 4, 6],
            [8, 10, 12],
            [14, 16, 18],
        ]

        var count = 0
        for row in table {

            for value in row {
                print(value)
                count += 1
            }
        }

        print("total: \(count)")

        let taskCTable = [
            [3, 5, 7, 9],
            [2, 4],
            [8, 6, 1],
            [10],
        ]

        print(columnTotal(in: taskCTable, column: 0))
        print(columnTotal(in: taskCTable, column: 1))

        let readings = [
            [1.5, 3.2, 2.8],
            [7.1],
            [4.4, 6.0],
            [5.9, 8.3, 0.7, 2.2],
        ]

        if let biggest = maxValue(in: readings) {
            print("Biggest value is \(biggest)")
        } else {
            print("No values found")
        }
    }
}

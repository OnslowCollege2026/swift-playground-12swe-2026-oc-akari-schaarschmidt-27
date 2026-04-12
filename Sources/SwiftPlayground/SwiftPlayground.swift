// The Swift Programming Language
// https://docs.swift.org/swift-book

//import Foundation

@main
struct SwiftPlayground {
    static func main() {
        func divider() {
            print("=======================================================================================================")
        }
        divider()
        
        let temperatures = [
            [1, 2, 3, 4],
            [5, 6, 7, 8], 
            [9, 10, 11, 12,],
        ]

        let firstRow = temperatures[0]
        print("first row:")
        print(firstRow)

        print("row 2 column 3:")
        print(temperatures[1][2])

        print("row 3 column 1:")
        print(temperatures[2][0])

        var row2Total: Int = 0
        var entries: Int = 0
        for values in temperatures[1] {
            row2Total += values
            entries += 1
        }
        print("entries:")
        print(entries)
        var average = Double(row2Total) / Double(entries)
        print("row 2 average")
        print(average)
        
        divider()

        let table = [
            [2, 4, 6],
            [8, 10, 12],
            [14, 16, 18]
        ]

        var tableValues: Int = 0
        for item in table {
            for item2 in item {
                print(item2)
                tableValues += 1
            }
        }
        print(tableValues, "values were printed")
        
        divider()

        func columnTotal(in table: [[Int]], column: Int) {
            var columnTotal: Int = 0
            let table = [
                [3, 5, 7, 9],
                [2, 4],
                [8, 6, 1],
                [10]
            ]
            if column == 0 {
                columnTotal = table[0][column] + table[1][column] + table[2][column] + table[3][column]
            }
            if column == 1 {
                columnTotal = table[0][column] + table[1][column] + table[2][column]
            }
            if column == 2 {
                columnTotal = table[0][column] + table[2][column]
            }
            if column == 3 {
                columnTotal = table[0][column]
            }
            //columnTotal = table[0][column] + table[1][column] + table[2][column] + table[3][column]
            print(columnTotal)

        }
        columnTotal(in: [[0]], column: 3)

        divider()

        func maxValue(in: [[Double]]) -> Double {
            var readings: [[Double]] = []
            readings = [[1.5, 3.2, 2.8],
                        [7.1],
                        [4.4, 6.0],
                        [5.9, 8.3, 0.7, 2.2]]
            if readings.isEmpty {
                print("Error: Array is empty")
                return 0.0
            }
            var maxValue: Double = 0.0
            for row in readings {
                for value in row {
                    if value >= maxValue {
                        maxValue = value
                    }
                }
            }
            print(maxValue, "is the maximum value in this array")
            return maxValue
            }
        
        maxValue(in: [[0.0]])
    }
}





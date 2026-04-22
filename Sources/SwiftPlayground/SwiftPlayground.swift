// The Swift Programming Language
// https://docs.swift.org/swift-book

//import Foundation

@main
struct SwiftPlayground {
    static func main() {
        
        let size: Int = 6
        
        // if the size is larger than 26 or smaller than 1, print an error as the english alphabet only goes up to 26 letters
        if size >= 27 || size < 1 {
            print("Error: Invalid size number, please choose a number from 1-26")
            return
        }
        
        // makes the board for you based off of the inputed size instead of having to manually make the board
        var ocean = Array(repeating: Array(repeating: "~", count: size), count: size)
        
        // creates a seperate board of the same size to keep track of the players guesses
        var guesses = Array(repeating: Array(repeating: "~", count: size), count: size)
        
        
        // sets ships on the board
        ocean[1][3] = "S"
        ocean[2][3] = "S"
        ocean[4][0] = "S"
        ocean[5][4] = "S"
        
        
        // function to print the board
        func printBoard(_ board: [[String]]) {
            var sizeValue: Int = -1
            
            // alphabet for coordinates system, ex; A1, B5, C2
            // this is why the size can only go up to 26
            let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
            
            // coordinateLetters variable to create the coordinate letters at the top of the board based off of the inputed size
            var coordinateLetters: String = ""
            // letter variable to keep track of what letter needs to be put on the board and make sure theres no duplicate letters
            var letter = -1
            
            for _ in guesses[0] {
                letter += 1
                coordinateLetters += "[ \(alphabet[letter]) ]"
                
            }
            
            // prints the coordinate letters at the top of the board
            print(coordinateLetters)
            
            // prints the "guesses" board and puts a number on the right to keep track of what row it is
            for _ in guesses[0] {
                sizeValue += 1
                print(guesses[sizeValue], sizeValue + 1)
            }
            
            
        }

        // call the function to print the board
        printBoard([[""]])
    }
}





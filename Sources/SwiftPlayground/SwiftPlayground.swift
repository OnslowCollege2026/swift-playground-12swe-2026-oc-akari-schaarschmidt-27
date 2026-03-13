// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        func printRoomIntro() {
        print("This program calculates room area and volume.")
        print("It also finds the usable space after furniture.")
        }
        
        printRoomIntro()

        func printDivider() {
            print("--------")
        }
        printDivider()
        print("Summary here")
        printDivider()

        func printUnitsNote() {
            print("All measurements are in metres")
        }

        printUnitsNote()

        func printGoodbye() {
            print("Done. Thanks for using the calculator.")
        }
        printGoodbye()
    }
}





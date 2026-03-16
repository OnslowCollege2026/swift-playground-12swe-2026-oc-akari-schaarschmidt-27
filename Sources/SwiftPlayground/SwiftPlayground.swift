// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let length: Double = 6
        let width: Double = 4.5
        let height: Double = 2.7

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
        
        func roomVolume() -> Double {
            // return volume using stored constants
            length * width * height
        }
        
        func printArea(length: Double, width: Double) {
            // calculate and print area
            print(length * width, "m²")
        }
        // confirm roomVolume function works
        roomVolume()
        print(roomVolume(), "m³")
        
        // confirm printArea function works
        printArea(length: length, width: width)
        
        func area(length: Double, width: Double) -> Double {
            // return area
            length * width
        }
        // confirm area function works
        print(area(length: length, width: width))
        
        func volume(length: Double, width: Double, height: Double) -> Double {
            // returns volume
            length * width * height
        }
        // confirm volume function works
        print(volume(length: length, width: width, height: height))
    }
}





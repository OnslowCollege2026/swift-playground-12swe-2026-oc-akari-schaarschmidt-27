// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let length: Double = 6
        let width: Double = 4.5
        let height: Double = 2.7
        
        /*
        Calculates the area of a room
        - Parameters:
        --- length: the length of the room in metres
        --- width: the width of the room in metres
        -Returns: Calculated area of the room as a double
        */
        func roomArea(length: Double, width: Double) -> Double {
            // return area
            length * width
        }
        /*
        Calculates the volume of a room
        - Parameters:
        ---length: the length of the room in metres
        ---width: the width of the room in metres
        ---height: the height of the room in metres
        Returns: Calculated volume of the room
        */
        func roomVolume() -> Double {
            // return volume using stored constants
            length * width * height
        }
        /*
        Checks if a room is small
        - Parameters
        --- volume: the volume of the room in m³
        -Boolean: a variable that is either true or false
        Returns: true if the room is under 60 m³, false if it is over 60 m³
        */
        func isRoomSmall(volume: Double) -> Bool {
            volume < 60
        }

        /*
        Reduces the height of a room by a percentage
        - Parameters:
        --- original: The original height of the room in meters
        --- reductionPercent: The percentage that the original height is being reduced by
        Returns: Reduced value in meters
        */
        func reducedHeight(original: Double, reductionPercent: Double) -> Double {
            let multiplier = (100.0 - reductionPercent) / 100.0
            return original * multiplier
        }
    }
}





// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let furnitureVolumes = [1.2, 0.8, 2.5, 0.6, 1.0]
        var itemNumFurnitureVolumes: Int = 1
        var totalFurnitureVolumes: Double = 0.0
        for item in furnitureVolumes {
            print("Item \(itemNumFurnitureVolumes): \(item)")
            totalFurnitureVolumes += item
            itemNumFurnitureVolumes += 1
            if item >= 2.0 {
                print("Oversized item detected")
            }
        }
        
        var lengthInput = -1.0
        var widthInput = -1.0
        var heightInput = -1.0
        
        while lengthInput <= 0 {
        print("Enter room length:")
        if let input = readLine(), let length = Double(input) {
            // store length, do further calculations
        lengthInput = length
        if length <= 0.0 {
            print("Invalid Number")
        }
        }
        }
        while widthInput <= 0 {
        print("Enter room width:")
        if let input = readLine(), let width = Double(input) {
            // store length, do further calculations
        widthInput = width
        if width <= 0.0 {
            print("Invalid Number")
        }
        }
        }
        while heightInput <= 0.0 {
        print("Enter room height:")
        if let input = readLine(), let height = Double(input) {
            // store length, do further calculations
        heightInput = height
        if height <= 0.0 {
            print("Invalid Number")
        }
        }
        }
        let roomArea = lengthInput * widthInput
        print("Room area: \(roomArea) m²")
        let volume = lengthInput * widthInput * heightInput
        print("Room volume: \(volume) m³")
        print("Furniture volume: \(totalFurnitureVolumes) m³")
        let usableVolume = volume - totalFurnitureVolumes
        print("Usable Volume: \(usableVolume) m³")
        if usableVolume <= 60.0 {
            print("Warning: Usable volume below 60 m³")
        }
        if usableVolume >= 60.0 {
            print("Usable volume is fine")
        }
    }
}





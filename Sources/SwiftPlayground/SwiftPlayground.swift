// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        
        if true {
            let note = "i am"
            print(note)
        }
        //print(note)
        
        var status = ""

        if true {
            status = "sphere"
        }
        print(status)
        
        func showArea() {
            let value1: Double = 6
            let value2: Double = 4.5
            let value3: Double = 2.7
            print(value1 * value2 * value3)
        }
        //print(value1 * value2 * value3)

        let isLarge = false

        if isLarge == false {
            let label: String = "false"
            print(label)
        } else {
            let label2: String = "true"
            print(label2)
        }
        //print(label)
        //print(label2)

    }
}





// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@main
struct SwiftPlayground {
    static func main() {
        //constants:
        //  - Grams and Kilos
        let kumara: Double = 0.1 // 1 kumara = 100 grams/0.1 kilos
        let maxKilosPerBag: Double = 5.0 // the maximum amount of kilograms per bag is 5 kilograms/5000 grams
        
        //  - Prices
        let pricePerKilo: Double = 3.00 // price of kumara per kilo
        let bagPrice: Double = 0.20 // price for bags 20 cents
        
        
        // Variables
        var stock: Double = 0.0 // the current stock of kumara in grams
        
        // bin can fit 50 kilos of kumara and there are 5000 bags


        func addStock() {
            print("How much Kumara would you like to add in Kilograms?")
            
            if let userInput = readLine(), let amount = Int(userInput) {
                //stock += amount
            }
            print(stock, "Grams of Kumara in stock")
        }

        addStock()
    }
}





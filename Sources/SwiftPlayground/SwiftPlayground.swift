// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@main
struct SwiftPlayground {
    static func main() {
        //constants:
        //  - Maximums
        let bags: Int = 5000 // the max amount of bags
        let binLimit: Double = 50.0 // the max amount of kumara that can be in stock at a time in kilograms

        //  - Grams and Kilos
        let kumara: Double = 0.1 // 1 kumara = 100 grams/0.1 kilos
        let maxKilosPerBag: Double = 5.0 // the maximum amount of kilograms per bag is 5 kilograms/5000 grams
        
        //  - Prices
        let pricePerKilo: Double = 3.00 // price of kumara per kilo
        let bagPrice: Double = 0.20 // price for bags 20 cents     
        
        // Variables
        var stock: Double = 0.0 // the current stock of kumara in grams
        
        // bin can fit 50 kilos of kumara and there are 5000 bags

        // divider used in menus and other contexts to clearly seperate segments of text   
        func divider() {
            print("=======================")
        }
        func menu() {
            divider()
            print("What would you like to do?")
            print("1. Add stock")
            print("2. View stock")
            print("3. Sell")
            print("")
            print("")
            print("Info")
            print("_. View history")

        }


        func addStock() {
            print("How much Kumara would you like to add in Kilograms?")
            
            if let userInput = readLine(), let amount = Double(userInput) {
                if amount >= 0.1 && amount <= binLimit {
                    if stock + amount <= binLimit{
                        stock += amount
                        print(stock, "Kilograms of Kumara in stock")
                    } else {
                        print("Stock bin has a limit of 50 Kilograms, please choose a lower number")
                        print(stock, "Kilograms of Kumara currently in stock")
                        addStock()
                    }
                    } else {
                        print("Invalid Number, Please choose a number from 1 to 50")
                        addStock()
                }
            }
        }
        addStock()
        func viewStock() {
            print(stock, "Kilograms of Kumara currently in stock")
        }
    }
}





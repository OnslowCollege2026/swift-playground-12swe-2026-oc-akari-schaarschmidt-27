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
        let kiloPrice: Double = 3.00 // price of kumara per kilo
        let bagPrice: Double = 0.20 // price for bags 20 cents     
        
        // Variables
        var stock: Double = 0.0 // the current stock of kumara in grams
        var currentBalance: Double = 0.0
        var record: [[String]] = []
        var averageKilosPerBagArray: [Double] = []
        var averageEarnedPerBagArray: [Double] = []
        
        
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
            print("4. View Balance")
            print("5. Stat Summary")
            print("6. View history")
            print("7. Exit")
            divider()
            if let userInput = readLine(), let selection = Int(userInput) {
                if selection == 1 {
                    divider()
                    addStock()
                }
                if selection == 2 {
                    divider()
                    viewStock()
                    menu()
                }
                if selection == 3 {
                    sell()
                }
                if selection == 4 {
                    divider()
                    print("You currently have $\(currentBalance)")
                    menu()
                }
                if selection == 5 {
                    divider()
                    statSummary()
                    menu()
                }
                if selection == 6 {
                    viewHistory()
                    menu()
                }
                if selection == 7 {
                    exit(1)
                }

            }
        }
        // initial call of menu function
        menu()
        // function to add stock to the kumara shop
        func addStock() {
            print("How much Kumara would you like to add in Kilograms?")
            // gets user input for how much kumara to add
            if let userInput = readLine(), let amount = Double(userInput) {
                // checks if the inputed amount is valid (>100g and < the bin limit which is 50 kilograms)
                if amount >= 0.1 && amount <= binLimit {
                    //checks to make sure that adding the inputed amount doesnt cause the bin to go over the bin limit (50 kilograns)
                    if stock + amount <= binLimit{
                        // adds the inputed amount of kumara to the stock
                        stock += amount
                        divider()
                        print(stock, "Kilograms of Kumara in stock")
                        menu()
                    } else {
                        // prints an error if the inputed value was over 50 kilograms and asks again for user input
                        print("Stock bin has a limit of 50 Kilograms, please choose a lower number")
                        print(stock, "Kilograms of Kumara currently in stock")
                        addStock()
                    }
                    } else {
                        // prints an error if the input was invalid and asks again for user input
                        print("Invalid Number, Please choose a number from 1 to 50")
                        addStock()
                }
            }
        }
        
        func viewStock() {
            print(stock, "Kilograms of Kumara currently in stock")
        }
        func sell() {
            print("How much kumara are you selling in kilograms?")
            if let userInput = readLine(), let amount = Double(userInput) {
                if amount <= stock && amount >= 0.1 {
                    // constants
                    let kumaraCost: Double = amount * kiloPrice
                    let bags: Double = amount / 5
                    //variables
                    var roundUpBags: Int = Int(bags)
                    var totalMoneyMade: Double = 0.0
                    
                    if bags > Double(roundUpBags) {
                        roundUpBags += 1
                    }

                    totalMoneyMade += kumaraCost
                    totalMoneyMade += Double(roundUpBags) * bagPrice
                    stock -= amount
                    currentBalance += totalMoneyMade

                    print("Kumara: $\(kumaraCost)")
                    print("Bags: $\(Double(roundUpBags) * bagPrice)")
                    print("Total: $\(totalMoneyMade) earned")
                    print(stock, "Kilograms of kumara now in stock")
                    
                    record.append(["Kumara: \(amount) Kilograms - $\(kumaraCost)", "Bags: \(roundUpBags) Bags - $\(Double(roundUpBags) * bagPrice)", "Total: $\(totalMoneyMade)", "\(stock), Kilograms of kumara in stock after this sale"])
                    let averageKilosPerBag: Double = amount / Double(roundUpBags)
                    averageKilosPerBagArray.append(averageKilosPerBag)
                    
                    let averageEarnedPerBag: Double = totalMoneyMade / Double(roundUpBags)
                    averageEarnedPerBagArray.append(averageEarnedPerBag)
                    


                    menu()
                } else {
                    print("Invalid Number, please choose a number from 0.1 - 50.0")
                    sell()
                }
            }
        }
        
        func viewHistory() {
            divider()
            var numCount: Int = 0
            for recordLine in record {
                numCount += 1
                print("--- Sale #\(numCount):")
                for line in recordLine {
                    print(line)
                }
            }
            menu()
        }
        func statSummary() {
            var kilosEntryCount: Int = 0
            var kilosEntriesSum: Double = 0.0
            var averageKilosPerBag: Double = 0.0
            for entry in averageKilosPerBagArray {
                kilosEntryCount += 1
                kilosEntriesSum += entry
                averageKilosPerBag = kilosEntriesSum / Double(kilosEntryCount)

            }
            var earnedEntryCount: Int = 0
            var earnedEntriesSum: Double = 0.0
            var averageEarnedPerBag: Double = 0.0
            for entry in averageEarnedPerBagArray {
                earnedEntryCount += 1
                earnedEntriesSum += entry
                averageEarnedPerBag = earnedEntriesSum / Double(earnedEntryCount)

            }

            print("Average kilograms of Kumara per bag:")
            print(averageKilosPerBag, "Kilograms")
            print("Average amount earned per bag:")
            print("$\(averageEarnedPerBag)")
        }
    }
}





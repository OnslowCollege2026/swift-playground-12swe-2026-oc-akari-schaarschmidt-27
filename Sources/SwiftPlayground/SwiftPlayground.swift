// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@main
struct SwiftPlayground {
    static func main() {
        let divider = "------------------"
        var eggsSold = 0
        var menuSelection = 0
        var eggsInStock = 0
        var eggSync = 0
        var day = 1
        var totalEggsSold = 0

        //Prints the Egg Shop menu
        func printEggShop(userSelect: String) -> Int {
            var userSelection = -1
            
            // prints the options
            print("==== Egg Shop ====")
            print("Day", day)
            print("------------------")
            print("1. Add eggs")
            print("2. Sell eggs")
            print("3. Show current stock")
            print("4. Show total eggs sold")
            print("5. Close for the day and reopen the next day")
            print("6. Exit")
            print("Choose an option:")
            
            // gets user input
            if let userInput = readLine(), let selection = Int(userInput) {
                userSelection = selection
            }
            
            // checks to make sure the number input is a valid number and returns 0 if the number is below 0 or above 5
            if userSelection > 0 {
                if userSelection < 7 {
                } else {
                    print(divider)
                    print("Invalid Number")
                    return 0
                }
            } else {
                print(divider)
                print("Invalid Number")
                return 0
            }
            
            // sets menuSelection to the same number the user selected to be used later
            menuSelection = 0
            for _ in 1...userSelection {
                menuSelection += 1
            }
            //print(menuSelection, "chosen")
            func addEggs(currentStock: Int, amount: Int) -> Int {
                var eggAddAmount = 0
                print(divider)
                print(eggsInStock, "eggs currently in stock")
                print(divider)
                print("Enter how many eggs you would like to add, or type any other word to exit and return to menu")
                if let userInput = readLine(), let amount = Int(userInput) {
                    if amount < 1 {
                        print(divider)
                        print("Invalid number. Please choose a number above 0, or type any other word to exit and return to menu")
                        addEggs(currentStock: eggsInStock, amount: 0)
                        return 0
                    }
                    eggAddAmount = amount
                }
                eggsInStock += eggAddAmount
                print(divider)
                print(eggsInStock, "eggs now in stock")
                printEggShop(userSelect: "")
                return eggsInStock
            }
            func sellEggs(currentStock: Int, amount: Int) -> Int? {
                var eggsSellAmount: Int = 0
                print(divider)
                print(eggsInStock, "eggs currently in stock")
                print(divider)
                print("Enter how many eggs you would like to sell, or type any other word to exit and return to menu")
                if let userInput = readLine(), let amount = Int(userInput) {
                    eggsSellAmount = amount
                    
                    if eggsSellAmount <= 0 {
                        print(divider)
                        print("Invalid number, please choose a number above 0 or type any other word to exit and return to menu")
                        sellEggs(currentStock: eggsInStock, amount: 0)
                        return 0
                    }
                    if eggsSellAmount > eggsInStock {
                        print(divider)
                        print("Invalid number, please choose a number equal to or less than the current egg stock or type any other word to exit and return to menu")
                        sellEggs(currentStock: eggsInStock, amount: 0)
                        return 0
                    }
                }
                eggSync = eggsSellAmount
                eggsInStock -= eggsSellAmount
                updateSoldCount(currentSold: eggsSold, amount: 0)
                stockMessage(stock: 0)
                printEggShop(userSelect: "")
                return 0
            }
            func updateSoldCount(currentSold: Int, amount: Int) -> Int {
                eggsSold += eggSync
                totalEggsSold += eggsSold
                return 0
            }
            func soldMessage() -> String {
                print(divider)
                print(eggsSold, "eggs sold today")
                print(totalEggsSold, "total eggs sold ever")
                stockCheck()
                printEggShop(userSelect: "")
                return ""
            }
            func stockMessage(stock: Int) -> String {
                print(divider)
                print(eggsInStock, "eggs in stock")
                stockCheck()
                printEggShop(userSelect: "")
                return ""
            }
            func stockCheck() {
                if eggsInStock <= 10 {
                    print("!!!!!!!!!!!!!!!!!!")
                    print("Warning: Egg stock is low, Restock soon")
                }
            }
            if menuSelection == 1 {
                addEggs(currentStock: eggsInStock, amount: 0)
            }
            if menuSelection == 2 {
                sellEggs(currentStock: eggsInStock, amount: 0)
            }
            if menuSelection == 3 {
                stockMessage(stock: 0)
            }
            if menuSelection == 4 {
                soldMessage()
            }
            if menuSelection == 5 {
                print(divider)
                print(eggsSold, "Eggs sold Today")
                print(eggsInStock, "Eggs in stock")
                print("Closing the shop for the day...")
                print("--- Zzz -- Zzz ---")
                day += 1
                eggsSold = 0
                print("Its a new day and the Egg Shop is now open")
                printEggShop(userSelect: "")
            }
            if menuSelection == 6 {
                exit(1)
            }
            return userSelection
        }
        
        //Initial call of the Egg Shop Menu
        printEggShop(userSelect: "")
        
    }
}





func menuChoice() -> Int {
    print("==== Egg Shop ====")
    print("1. Add eggs")
    print("2. Sell eggs")
    print("3. Show current stock")
    print("4. Show total eggs sold")
    print("5. Exit")
    print("Choose an option:")
    let input = readLine() ?? ""
    let number = Int(input)
    return number ?? 0
}

func addEggs(currentStock: Int, amount: Int) -> Int {
    return currentStock + amount
}

func sellEggs(currentStock: Int, amount: Int) -> Int? {
    if amount <= currentStock {
        return currentStock - amount
    } else {
        return nil
    }
}

func updateSoldCount(currentSold: Int, amount: Int) -> Int {
    return  currentSold + amount
}

@main
struct SwiftPlayground {
    static func main() {
        var eggsInStock = 0
        var eggsSold = 0

        var choice = 0

        while choice != 5 {
            choice = menuChoice()

            if choice == 1 {
                print("How many eggs would you like to add?")
                let input = readLine() ?? ""
                let amount = Int(input) ?? 0
                eggsInStock = addEggs(currentStock: eggsInStock, amount: amount)
                print("Added! Stock is currently \(eggsInStock)")

            }

            if choice == 2 {
                print("How many eggs to sell?")
                let input = readLine() ?? ""
                let amount = Int(input) ?? 0
                let result = sellEggs(currentStock: eggsInStock, amount: amount)
                if let newStock = result {
                    print(" The sale went through! the remainding amount of eggs is \(newStock)")
                    
                    eggsInStock = newStock
                    eggsSold = updateSoldCount(currentSold: eggsSold, amount: amount)
                } else {
                    print("Unfortunately the transaction didn't go through .")
                    print("Your current amount of eggs is \(eggsInStock) and you tried to sell more than what you had which was \(amount)")
                }
            }
            
            if choice == 3 {
                print("Your current amount of eggs is \(eggsInStock)")
            }

            if choice == 4 {
                print("The total amount of eggs sold is \(eggsSold)")

            }
        }

        print("Goodbye!")
    }
}

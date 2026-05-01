/// MENU FUNCTION
/// This function is going to be used to show the user all the options they have to choose from the program.
func menuChoice() -> Int {
    print("==== Kumara Stand ====")
    print("1. Add Kumara")
    print("2. Record a sale")
    print("3. Show current stock")
    print("4. Show total Kumara sold")
    print("5. Owner summary")
    print("6. Exit")
    print("Choose an option:")
    let input = readLine() ?? ""
    let number = Int(input)
    return number ?? 0
}

/// Adds to the current stock
/// Returns the current stock value, or nil if the user enters invalid input
func addStock(currentStock: Double, amount: Double) -> Double? {
    if amount <= 0 {
        return nil
    }
    if currentStock + amount > 50 {
        return nil
    }
    return currentStock + amount
}

/// Validates whether a sale is allowed
/// Returns true if valid, false if somethings wrong.
func recordSale(currentStock: Double, weight: Double, bags: Int) -> Bool {
    if bags <= 0 { return false }
    if weight < 0.1 { return false }
    if weight > currentStock { return false }
    if weight > Double(bags) { return false }
    return true
}

/// Works out the cost of a sale and returns it
/// as a neat display.
func calculateCharge(weight: Double, bags: Int) -> String {
    let kumaraCharge = weight * 3.0
    let bagCharge = Double(bags) * 0.20
    let total = kumaraCharge + bagCharge
    return "Kumara: $\(kumaraCharge), Bags $\(bagCharge), total $\(total))"
}

/// Returns a string showing current stock amount
/// Prevents having the same format in mutiple different places
func stockMessages(stock: Double) -> String {
    return "Current Stock: \(stock)kg"
}

@main
struct SwiftPlayground {
    static func main() {
        // Start with zero stock on the stall
        var stock: Double = 0.0

        // sales store each purchase as [weight, bags]
        var sales: [[Double]] = []

        // tracks the users current menu choice
        // start at 0 so the loop begins
        var choice = 0

        // keep the loop running until the user picks option 6
        while choice != 6 {
            // Show the menu and read the users choice
            choice = menuChoice()
        

        // Option 1, add stock.
        if choice == 1 {
            print("How many kgs would you like to add?")
            let input = readLine() ?? ""
            let amount = Double(input) ?? 0  // default to 0 if invalid input is entered
            // addStock returns nil if invalid, or the new stock if valid.
            // if let only runs the block of code if the user provides valid input.
            if let newStock = addStock(currentStock: stock, amount: amount) {
                stock = newStock
                print("Added! \(stockMessages(stock: stock))")
            } else {
                print("Invalid amount, please try again!")
            }

            // Option 2, return a sale.
        } else if choice == 2 {
            print("Enter weight sold (kg):")
            let weightInput = readLine() ?? ""  // Asking for user input, if invalid returns nil
            print("Enter number of bags used")
            let bagInput = readLine() ?? ""  // Asking for user input, if invalid returns nil
            let weight = Double(weightInput) ?? 0
            let bags = Int(bagInput) ?? 0
            // Validate the sale using recordSale
            if recordSale(currentStock: stock, weight: weight, bags: bags) {
                // Store this sale together as [weight, bags]
                // Bags is stored as a double so the array type remains Double.
                sales.append([weight, Double(bags)])
                // minus sold weight from the stock.
                stock -= weight
                print(calculateCharge(weight: weight, bags: bags))
                print("Sale recorded \(stockMessages(stock: stock))")
            } else {
                print("Invalid sale")
            }
        
        // Option 3, view current stock
        } else if choice == 3 {
            print(stockMessages(stock: stock))
            
        
        // Option 4, View sale records
        } else if choice == 4 {
            if sales.isEmpty {
                print("No sales recorded yet.")
            } else {
                // loops through each sale by the index so we can show sale 1, sale 2 for exmaple.
                // sales[i][0] is weight, sales [i][1] is bags (converted into int to display)
                for i in sales.indices {
                    print("Sale \(i+1): \(sales[i][0])kg, \(Int(sales[i][1])) bags")
                }
            }

        } else if choice == 5 {
            if sales.isEmpty {
                print("No sales to summarise yet.")
            } else {
                // Running the totals across all the sales
                var totalWeight = 0.0
                var totalBags = 0.0
                var totalEarned = 0.0

                // Add up every sales weight, bags, and return.
                for sale in sales {
                    totalWeight += sale [0]
                    totalBags += sale[1]
                    totalEarned += (sales[0] * 3.0) + (sale[1] * 0.20)
                }
            }
            }
        }
        }
    }
    

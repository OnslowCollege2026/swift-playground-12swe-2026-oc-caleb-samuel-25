/// This function is going to be used to show the user all the options they have to choose from the program.
func menuChoice() -> Int {
    print("==== Egg Shop ====")
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

func addStock(currentStock: Double, amount: Double) -> Double? {
    if amount <= 0 {
        return nil
    }
    if currentStock + amount > 50 {
        return nil
    }
    return currentStock + amount
}

func recordSale(currentStock: Double, weight: Double, bags: Int) -> Bool {
    if bags <= 0 { return false }
    if weight < 0.1 { return false }
    if weight > currentStock { return false }
    if weight > Double(bags) { return false }
    return true
}

func calculateCharge(weight: Double, bags: Int) -> String {
    let kumaraCharge = weight * 3.0
    let bagCharge = Double(bags) * 0.20
    let total = kumaraCharge + bagCharge
    return "Kumara: $\(kumaraCharge), Bags $\(bagCharge), total $\(total))"
}

func stockMessages(stock: Double) -> String {
    return "Current Stock: (stock:))kg"
}

@main
struct SwiftPlayground {
    static func main() {
        var stock: Double = 0.0
        var sales: [[Double]] = []

        var choice = 0

        while choice != 6 {
            choice = menuChoice()
        }

        if choice == 1 {
            print("How many kgs would you like to add?")
            let input = readLine() ?? ""
            let amount = Double(input) ?? 0
            if let newStock = addStock(currentStock: stock, amount: amount) {
                stock = newStock
                print("Added! \(stockMessages(stock: stock))")
            } else {
                print("Invalid amount, please try again!")
            }
        }

    } else if choice == 2 {
        print("Enter weight sold \(kg):")
        let weightInput = readLine () ?? ""
        print("Enter number of bags used")
        let bagInput = readLine() ?? ""
        let weightInput = Double(weightInput) ?? 0
        let bags = Int(bagInput) ?? 0
        if recordSale(currentStock: stock, weight: weight, bags: bags) {
            sales.append([weight, Double(bags)])
            stock -= weight
            print("Sale recorded")
        }
    }
}


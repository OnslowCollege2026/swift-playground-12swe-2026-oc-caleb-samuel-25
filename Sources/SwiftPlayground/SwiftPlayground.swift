
/// This function is going to be used to show the user all the options they have to choose from the program.
func menuChoice() -> Int {
    print("==== Egg Shop ====")
    print("1. Add Kumara")
    print("2. Sell Kumara")
    print("3. Show current stock")
    print("4. Show total Kumara sold")
    print("5. Exit")
    print("Choose an option:")
    let input = readLine() ?? ""
    let number = Int(input)
    return number ?? 0
}

/// This function is keeping track of the kumara that is being added to the store as an option. 
func addKumara(currentStock: Int, amount: Int) -> Int {
    return currentStock + amount
}

/// This function is being used to sell kumara as an option.
func sellKumara(currentStock: Int, amount: Int) -> Int? {
    if amount <= currentStock {
        return currentStock - amount
    } else {
        return nil
    }
}
/// This function is being used to keep track of the total amount of kumara that is being sold.
func updateSoldCount(currentSold: Int, amount: Int) -> Int {
    return  currentSold + amount
}


@main
struct SwiftPlayground {
    static func main() {
        var kumaraInStock = 0
        var kumaraSold = 0

        
    }
}
func printRoomIntro() {
    print("This program calculates room area and volume.")
    print("It also finds the usable space after furniture.")
}

func printUnitsNote() {
    print("All measurements are in metres.")
}


func printDivider() {
    print("--------")
}

func printGoodbye() {
    print("Done. Thanks for using the calculator.")
}

@main
struct SwiftPlayground {
    static func main() {
        printRoomIntro()

        printDivider()
print("Summary here")

    printUnitsNote()

printGoodbye()
    }
}
@main
struct SwiftPlayground {
    static func main() {
        let vocabulary: [[String]] = [
            ["hello", "yodie", "chur", "yoza", "anuck"],
            ["goodbye", "cya","laters", "peace", "cnucks yo"],
            ["water", "wata", "watux", "watickle", "wanuk"]
        ]
    
    var counter = 0
    var score = 0
    var incorrectanswerIndice : [Int] = []

    while counter < vocabulary.count {
        let englishWord = vocabulary[counter][0]
        let correctWord = vocabulary[counter][1]
        let allAnswers = vocabulary[counter].dropFirst().shuffled()


        print("Please translate \(englishWord)")
        allAnswers.forEach { answer in
        print("-\(answer)")

        }
        
        if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {
            score = score + 1
            print("Yes, \(correctWord) is correct")
        } else {
            incorrectanswerIndice.append(counter)
            print("sorry! the correct answer is \(correctWord)")
        }
        counter = counter + 1
    }
    while incorrectanswerIndice.count > 0 {
        let index = incorrectanswerIndice[0]
        let englishWord = vocabulary[index][0]
        let correctWord = vocabulary[index][1]
        let allAnswers = vocabulary[index].dropFirst().shuffled()


        print("Please translate \(englishWord)")
        allAnswers.forEach { answer in
        print("-\(answer)")

if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {
            incorrectanswerIndice.removeFirst()
            print("Yes, \(correctWord) is correct")
        } else {
            incorrectanswerIndice.append(counter)
            print("sorry! the correct answer is \(correctWord)")
        }
    }

        }
    print("You have a score of \(score)/\(vocabulary.count)")
    if Double(score) >= Double(vocabulary.count / 2) {
        print("Congratulations!")
    } else {
        print("Try again next time")
    }
    }
}


@main
struct SwiftPlayground {
    static func main() {
        let roomLength = 6.0
        let roomWidth = 4.5
        let roomHeight = 2.7

    let roomArea = roomLength * roomWidth
    print("Room area: \(roomArea)m²")

    print("Enter room length:")
    if let userInput = readLine(), let length = Double(userInput) {
        print("Length is \(length)")
    } else {
        print("Invalid number")
    }

let roomVolume = roomLength * roomWidth * roomHeight
print("Room volume: \(roomVolume)m³")

let furnitureVolumes = [1.2, 0.8, 2.5, 0.6, 1.0]
var totalFurniture = 0.0

for (index, volume) in furnitureVolumes.enumerated() {
    print("Item \(index + 1): \(volume) m³")
    totalFurniture += volume
    if volume > 2.0 {
        print("Oversized item detected")
    }
} 

let usableVolume = roomVolume - totalFurniture
print("Usable volume: \(usableVolume)m³")

var heightInput = -1.0
while heightInput <= 0.0 {
    print("Enter height:")
    if let line = readLine(), let h = Double(line) { 
        heightInput = h
    }
}
print("Accepted height: \(heightInput) m")

print("Room area: \(roomArea) m²")
print("Room volume: \(roomVolume) m³")
print("Furniture volume: \(totalFurniture) m³")
print("Usable volume: \(usableVolume) m³")

if usableVolume < 60 {
    print("⚠ Warning: usable volume is low.")
} else {
    print("Usable volume is fine.")
}
    }
}
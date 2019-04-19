import UIKit

// Day 1.

var name = "Molly"
var age = 24
var superSmart = true
var favPoem = """
I shot an arrow towards the sky, \
it hit a cloud just floating by, \
the cloud fell dying to the shore, \
I won't shoot arrows anymore.
"""
var piDigitsIKnow = 3.141592653589793

var output = "You're talking to \(name), who's \(age) years old."
var output2 = "Is she super smart? Yes, that's \(superSmart)."

let taylor = "swift"

let explicit: Bool = true
let daysOfSwift: Int = 100

// Day 2.

// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

// If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:

var identity = (first: "Molly", last: "Benjaminson")
identity.0
identity.1
identity.first
identity.last

// Dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]
heights["Iggy Azalea"]

var twins = [String: String]()
twins["Mole"] = "Terter"
twins["Dole"] = "Terter"

twins

var words = Set<String>()

// Enums

enum Result {
    case success
    case failure
}

let result = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let shopTalk = Activity.talking(topic: "cars")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)

// Day 3

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

let haters = "Haters gonna "
let action = haters + "hate"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let allBeatles = firstHalf + secondHalf

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

let beginScore = 6
let endScore = 4

beginScore == endScore
beginScore != endScore

beginScore < endScore
beginScore >= endScore

"Taylor" <= "Swift"

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21

// && is "and"
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

// || is "or"
if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

// Ternary Operator

let firstCard2 = 11
let secondCard2 = 10

print(firstCard2 == secondCard2 ? "Cards are the same" : "Cards are different")

if firstCard2 == secondCard2 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// Switch Case

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// fallthrough = if you want execution to continue on to the next case.

// Range Operators

let newScore = 85

switch newScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// Day 4

// For loops
let loopCount = 1...10

for number in loopCount {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While loops
var whileNumber = 1

while whileNumber <= 20 {
    print(whileNumber)
    whileNumber += 1
}

print("Ready or not, here I come!")

// Repeat loops
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

repeat {
    print("This is false")
} while false

// Will always run once, unlike a while loop that won't run unless true.

// Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

// Infinite loops
/*var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}*/

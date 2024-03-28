import Foundation

//
//while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი
var num1 = 1
var endNum = 1
while num1 < 20 {
    if num1 % 2 != 0 {
        endNum *= num1
    }
num1 += 1
}
print(endNum)


//შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა  მივიღოთ “tseT”
var randomName = "malvina"
var randomSt = " "
for one in randomName {
    randomSt = String(one) + randomSt
}
print(randomSt)

//
//while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
var coolLight = "red"
while coolLight != "zzzz" {
    switch coolLight {
    case "red":
        print("🔴")
        coolLight = "yellow"
    case "yellow":
        print("🌕")
        coolLight = "green"
    case "green":
        print("🟢")
        coolLight = "red"
    default:
        ("traffic light isn't working")
    }
}


//Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”

var tickets = 19
tickets -= 1
while tickets > 0 {
    print ("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(tickets) ბილეთი")
    tickets -= 1
          }
print ("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")
          

 
//დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას

let someClosure = { (j: Int, k: Int) -> Int in
    return j + k
}
let result = someClosure (9,7)
print(result)


//
//შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
var oddNums: [Int] = []
var evenNums: [Int] = []
for num in 0...10 {
    if num % 2 == 0 {
        evenNums.append(num)
    } else {
        oddNums.append(num)
    }
}
print(oddNums)
print(evenNums)













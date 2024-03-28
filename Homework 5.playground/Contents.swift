import Foundation

//დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)


func mirrorMirror (random: String) -> (Bool) {
    var endResult = ""
    var endMirror = false
    
    for char in random {
        endResult = String(char) + endResult
    }
    if endResult == random {
        endMirror = true
    } else {
        endMirror = false
    }
    return(endMirror)
}


// დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.
 
func greatArray (array1: ([Int])) -> Int {
    var finalNumber = 0

    for number in array1 {
        finalNumber = number * number
        print(finalNumber)
    }
    return finalNumber
}

////დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან.
// 
//
var filterNumber = { (numbers: [Int])  -> [Int] in
    var finalArray = [Int]()
    
    for char in numbers {
        if char % 2 != 0 {
            finalArray.append(char)
        }
    }
    print(finalArray)
    return finalArray
}
 
filterNumber([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])


//შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი

var contactDict: [String: Int] = [
    "elene": 595337781,
    "achi": 577092228,
    "giga": 598908097]

contactDict["tsisi"] = 599338955

print(contactDict)
contactDict["giga"]
contactDict.removeValue(forKey: "achi")

//
//დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს.
func myDict(dictionary: [String: Int]) -> [String] {
    var sortedOne = dictionary.keys.sorted()
    return sortedOne
    
}

//შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.

let myDouble: [Double] = [10.5, 11.11, 14.9 ]
var biggest = myDouble [0]

for number in myDouble {
    if number > biggest {
        biggest = number
    }
}

print(biggest)

import Foundation

//შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ)
enum Gender {
    case male
    case female
    case meti
}

//შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender
protocol superBeing {
    var name: String { get }
    var strength: Int { get }
    var speed: Int { get }
    var weakness: String { get }
    var gender: Gender { get }
}

//SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა
extension superBeing {
    var strength: Int{ 24000 }
    var speed: Int { 14999 }
}

//შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს.

//გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String

//გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს -“‘სუპერგმირის სახელი’ არ შეუშინდა სახიფათო სიტუაციას და ‘დაზარალებულის სახელი’ გადაარჩინა სიკვდილს” (მაგ: “ბეტმენი” არ შეუშინდა სახიფათო სიტუაციას და “გელა” გადაარჩინა სიკვდილს).

//გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს -“‘სუპერგმირის სახელი’ შეერკინა და დაამარცხა ‘ბოროტმოქმედის სახელი’” (მაგ: “ბეტმენი” შეერკინა და დაამარცხა “ჯოკერი”)
class Superhero: superBeing {
    var name: String
    var weakness: String
    var gender: Gender
    var outfitColor: String
    var equipment: String
    var vehicle: String
    
    func rescue (supName: String, victName: String) {
        print("\(supName), არ შეუშინდა სახიფათო სიტუაციას და \(victName) გადაარჩინა სიკვდილს” ")
    }
    func combat (supName: String, villain: SuperVillain) {
        print( "\(supName),შეერკინა და დაამარცხა \(villain.name)")
    }
    
    init(name: String,  weakness: String, gender: Gender, outfitColor: String, equipment: String, vehicle: String) {
        self.name = name
        self.weakness = weakness
        self.gender = gender
        self.outfitColor = outfitColor
        self.equipment = equipment
        self.vehicle = vehicle
    }
   
}

//გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String

//გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს -“ბოროტმ. სახელი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “სუპერგმირის სახელი” მის შეჩერებას თუ შეძლებს” (მაგ: “ჯოკერი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “ბეტმენი” მის შეჩერებას თუ შეძლებს)

//გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს -“‘ბოროტმოქმედის სახელი’ ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად ‘მსხვერპლის სახელი’ აღმოჩნდა” (მაგ: “ჯოკერი” ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად “გელა” აღმოჩნდა)

class SuperVillain: superBeing {
    var name: String
    var weakness: String
    var gender: Gender
    var evilScheme: String
    var obsession: String
    var rivalry: String
    
    func attack(villName: String, hero: Superhero) {
        print("\(villName),გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა \(hero.name) მის შეჩერებას თუ შეძლებს ")
    }
    func experimentation(villName: String, subject: String) {
        print("\(villName) ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად \(subject) აღმოჩნდა")
    }
    
    init(name: String, weakness: String, gender: Gender, evilScheme: String, obsession: String, rivalry: String) {
        self.name = name
        self.weakness = weakness
        self.gender = gender
        self.evilScheme = evilScheme
        self.obsession = obsession
        self.rivalry = rivalry
    }
}

//შექმენით მინიმუმ 5-5 ობიექტი თითოეული SuperBeing-ის დაქონფირმებული კლასებიდან

let teddy = Superhero(name: "superteddy", weakness: "eating", gender: .male, outfitColor: "honeycan", equipment: "spoon", vehicle: "dragon")
let brother = Superhero(name: "bigBro", weakness: "anger", gender: .male, outfitColor: "green", equipment: "katana", vehicle: "bicycle")
let mom = Superhero(name: "Dede", weakness: "what weakness?", gender: Gender .female, outfitColor: "blue", equipment: "black belt", vehicle: "car")
let meMyselfI = Superhero(name: "ELENE", weakness: "dry eyes", gender: .meti, outfitColor: "random color", equipment: "nambu", vehicle: "dirtbike")
let soloLeveling = Superhero(name: "Sung", weakness: "personality", gender: .male, outfitColor: "black", equipment: "everything you need", vehicle: "legs")


let realVillain = SuperVillain(name: "giga", weakness: "heart", gender: .male, evilScheme: "delete codes", obsession: "eating junk food", rivalry: "ELENE")
let myNeighbour = SuperVillain(name: "cico", weakness: "lonely", gender: .female, evilScheme: "gather information about neighbours", obsession: "staring into your soul", rivalry: "ELENE")
let daughterOfCico = SuperVillain(name: "ani", weakness: "blood vessels", gender: .meti, evilScheme: "kill everyone", obsession: "perfect nose", rivalry: "ELENE")
let anotherNeighbour = SuperVillain(name: "cezo", weakness: "eyes", gender: .male, evilScheme: "String", obsession: "staring in my backyard", rivalry: "Dede")
let kindVillain = SuperVillain(name: "tikuna", weakness: "food", gender: .female, evilScheme: "removing fruits from neighbours trees", obsession: "eating leghvi", rivalry: "cico")

teddy.rescue(supName: "superteddy", victName: "weak")
mom.combat(supName: "dede", villain: myNeighbour)

daughterOfCico.attack(villName: "ani", hero: meMyselfI)
myNeighbour.experimentation(villName: "cico", subject: "tako")

teddy.speed
teddy.strength


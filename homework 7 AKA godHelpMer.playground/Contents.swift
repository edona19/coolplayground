import Foundation


//შექმენით Enum-ი სახელით WeekDay შესაბამისი ქეისებით. დაწერეთ ფუნქცია რომელიც იღებს ამ ენამის ტიპს და ბეჭდავს გადაწოდებული დღე სამუშაოა თუ დასვენების.

enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

func workOrNot(day: WeekDay) ->() {
    switch day {
    case .monday:
        print("work day")
    case .tuesday:
        print("work day")
    case .wednesday:
        print("work day")
    case .thursday:
        print("work day")
    case .friday:
        print("work day")
    case .saturday:
        print("relax day")
    case .sunday:
        print("relax day")
    }
}

 (workOrNot(day: .saturday))


//შექმენით Enum-ი სახელად GialaSquad, რომელიც აღწერს გია სურამელაშვილის ფანკლუბის წევრების დონეებს ქეისებით : “TsigroviManto”, “MoshishvlebuliMkerdi”, “TuGapatio”. შექმენით ფროფერთი GialaSquad-ში, რომელსაც ექნება ინფორმაცია თუ რა ღირს თითოეული დონე თვეში (დონეები დალაგებულია ძვირიდან იაფისაკენ). დაუმატეთ მეთოდი რომელიც დაბეჭდავს თითოეული დონის ფასს


enum GialaSquad {
    case TsigroviManto
    case MoshishvlebuliMkerdi
    case TuGapatioBeka
    
    var monthlyPayment: Int{
        switch  self {
        case .TsigroviManto:
            return 500
        case .MoshishvlebuliMkerdi:
            return  499
        case .TuGapatioBeka:
            return  498
        }
    }
    
    func giveMePrice () {
        print(self.monthlyPayment)
        
    }
}

let struggle = GialaSquad.TuGapatioBeka
struggle.giveMePrice()

//შექმენით enum-ი Weather შემდეგი ქეისებით, Sunny, Cloudy, Rainy და Snowy. ამ ქეისებს უნდა ჰქონდეს associated value Celsius-ის სახით. დაწერეთ function რომელიც მიიღებს ამ enum-ს, და მოგვცემს რეკომენდაციას რა უნდა ჩავიცვათ შესაბამისი ამინდის მიხედვით.

enum Weather {
    case Sunny(celsus: Int)
    case Cloudy(celsus: Int)
    case Rainy(celsus: Int)
    case Snowy(celsus: Int)
}
func whatToWear(for weather1: Weather) {
    switch weather1 {
    case .Sunny(let celsus) where celsus > 40:
        print("wear thin linenin dress with sandals")
        
    case .Cloudy(let celsus) where celsus > 20 && celsus < 25:
        print("wear jeans with t-shirt")
        
    case .Rainy(let celsus) where celsus > 15 && celsus < 20:
        print("wear jacket with boots")
        
    case .Snowy(let celsus) where celsus < 10 && celsus > 1:
        print("wear moon boots and gloves")
    case .Snowy, .Sunny, .Cloudy, .Rainy: break
    }
}
whatToWear(for: .Sunny(celsus: 45))

//
//შექმენით struct-ი Kanye, ფროფერთებით: album, releaseYear. ამის შემდეგ შექმენით array-ი Kanye-ს ტიპის, ჩაამატეთ რამოდენიმე Kanye-ს ობიექტი, და შეავსეთ მასივი კანიეებით. დაწერეთ ფუნქცია, რომელიც მიიღებს ამ კანიეების მასივს და წელს. ფუნქციამ უნდა დაგვიბრუნოს ყველა ალბომი რომელიც გამოშვებულია გადაწოდებული წლის შემდეგ და დაბეჭდოს ისინი


struct Kanye {
    var album: String
    var releaseYear: Int

}
var arrayKayne: [Kanye] = [
        Kanye(album: "The College Dropout", releaseYear: 2004),
        Kanye(album: "Late Registration", releaseYear: 2005),
        Kanye(album: "Graduation", releaseYear: 2007),
        Kanye(album: "808s & Heartbreak", releaseYear: 2008),
        Kanye(album: "My Beautiful Dark Twisted Fantasy", releaseYear: 2010),
        Kanye(album: "Watch the Throne", releaseYear: 2011),
        Kanye(album: "Yeezus", releaseYear: 2013),
        Kanye(album: "The Life of Pablo", releaseYear: 2016),
        Kanye(album: "Ye", releaseYear: 2018),
        Kanye(album: "Jesus Is King", releaseYear: 2019),
        Kanye(album: "Vultures 1", releaseYear: 2024)]

func transferKayne (kanye: [Kanye], year: Int) {
    for man in 0...kanye.count-1 {
        if kanye[man].releaseYear > year { print (kanye[man])
        }
    }
}
transferKayne(kanye:arrayKayne, year: 2011)

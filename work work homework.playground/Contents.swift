

import Foundation


//შევქმნათ Class Book.
//Properties: bookID(უნიკალური იდენტიფიკატორი Int), String title, String author, Bool isBorrowed.
//Designated Init.
//Method რომელიც ნიშნავს წიგნს როგორც borrowed-ს.
//Method რომელიც ნიშნავს წიგნს როგორც დაბრუნებულს.
//
class Book {
    var bookID: Int
    var title: String
    var author: String
    var isBorrowed: Bool
    
    init(title: String, author: String, isBorrowed: Bool, bookID: Int){
        self.bookID = bookID
        self.title = title
        self.author = author
        self.isBorrowed = isBorrowed
    }
    func markAsBorrowed() {
        if  isBorrowed == false {
            isBorrowed = true
            print ("Book is Borrowed")
        } else {
            print ("Book is already Borrowed")
        }
    }
        
    func markAsReturned() {
        if isBorrowed == true {
            isBorrowed = false
            print("Book is returned")
        } else {
            print(" Book is already returned")
        }
    }
    
    func printBookDetails(){
        print("Book title is  \(title), Book id is \(bookID), Book author is \(author), Book is borrowed is \(isBorrowed) ")
    }
}

var theBestBook = Book(title: "Heaven and Hell", author: "BS", isBorrowed: false, bookID: 5 )
theBestBook.markAsReturned()
theBestBook.printBookDetails()

//შევქმნათ Class Owner
//
//Properties: ownerId(უნიკალური იდენტიფიკატორი Int), String name, Books Array სახელით borrowedBooks.
//Designated Init.
//Method რომელიც აძლევს უფლებას რომ აიღოს წიგნი ბიბლიოთეკიდან.
//Method რომელიც აძლევს უფლებას რომ დააბრუნოს წაღებული წიგნი.
class Owner {
    var ownerId: Int
    var name: String
    var borrowedBooks: [Book]
    
    init(ownerId: Int, name: String, borrowedBooks: [Book]) {
        self.ownerId = ownerId
        self.name = name
        self.borrowedBooks = borrowedBooks
    }

    func takeBook(from library: [Book]) -> Bool {
        for book in library {
            if book.isBorrowed == false {
                book.markAsBorrowed()
                borrowedBooks.append(book)
                print ("\(name) succesfully  borrowed book \(book.title)" )
                return true
            }
        }
        print("I'm SUPER sorry \(name), but no books for you :) ")
        return false
    }
    
    func returnBook(book: Book) -> Bool {
        var indexToRemove: Int? = nil
        for index in 0..<borrowedBooks.count {
            if borrowedBooks[index] === book {
                indexToRemove = index
                break
            }
        }
        
        if let index = indexToRemove {
            let returnedBook = borrowedBooks.remove(at: index)
            returnedBook.markAsReturned()
            print("\(name) has returned \(returnedBook.title).")
            return true
            
        }else {
            print("\(name) does not have \(book.title) borrowed.")
            return false
      }
   }
}

//შევქმნათ Class Library
//
//Properties: Books Array, Owners Array.
//Designated Init.
//Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით.
//Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს.
//Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს.
//Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს.
//Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს.
//Method რომელიც ეძებს წაღებულ წიგნებს კონკრეტული Owner-ის მიერ.
//Method რომელიც აძლევს უფლებას Owner-ს წააღებინოს წიგნი თუ ის თავისუფალია.

class Library {
    var books = [Book]()
    var owners = [Owner]()
   
    
    init(books: [Book] = [Book](), owners: [Owner] = [Owner]()) {
        self.books = books
        self.owners = owners
    }
    func addBook(book: Book) {
        books.append(book)
    }
    func addOwner(owner: Owner) {
        owners.append(owner)
    }
    func availableBooks() -> [Book] {
        var available = [Book]()
        for book in books {
            if !book.isBorrowed {
                available.append(book)
            }
        }
        return available
    }
    func retrievedBooks() -> [Book] {
        var retrieved = [Book]()
        for book in books {
            if book.isBorrowed {
                retrieved.append(book)
            }
        }
        return retrieved
    }
    func findOwnerByID(ownerId: Int) -> Owner? {
        for owner in owners {
            if owner.ownerId == ownerId {
                return owner
            }
        }
        return nil
    }
    func booksTakenByOwner(owner: Owner) -> [Book] {
        var takenBooks = [Book]()
        for book in owner.borrowedBooks {
            takenBooks.append(book)
        }
        return takenBooks
    }
    func takeBook(owner: Owner, book: Book) -> Bool {
        if !book.isBorrowed {
            book.markAsBorrowed()
            owner.borrowedBooks.append(book)
            return true
        } else {
            return false
        }
    }
}

//გავაკეთოთ ბიბლიოთეკის სიმულაცია.
//
//შევქმნათ რამოდენიმე წიგნი და რამოდენიმე Owner-ი, შევქმნათ ბიბლიოთეკა.
//დავამატოთ წიგნები და Owner-ები ბიბლიოთეკაში
//წავაღებინოთ Owner-ებს წიგნები და დავაბრუნებინოთ რაღაც ნაწილი.
//დავბეჭდოთ ინფორმაცია ბიბლიოთეკიდან წაღებულ წიგნებზე, ხელმისაწვდომ წიგნებზე და გამოვიტანოთ წაღებული წიგნები კონკრეტულად ერთი Owner-ის მიერ.

let book1 = Book(title: "მე, ბებია, ილიკო და ილარიონი", author: "ნოდარ დუმბაძე", isBorrowed: false, bookID: 91)
let book2 = Book(title: "კუკარაჩა", author: "ნოდარ დუმბაძე", isBorrowed: false, bookID: 93)
let book3 = Book(title: "მე ვხედავ მზეს", author: "ნოდარ დუმბაძე", isBorrowed: false, bookID: 3)

let owner1 = Owner(ownerId: 111, name: "cowboy", borrowedBooks: [])
let owner2 = Owner(ownerId: 1111, name: "cowgirl", borrowedBooks: [])

let library = Library()

library.addBook(book: book1)
library.addBook(book: book2)
library.addBook(book: book3)
library.addOwner(owner: owner1)
library.addOwner(owner: owner2)

print("Available Books for You:")
for book in library.availableBooks() {
    print("\(book.title) by \(book.author)")
}
if let cowboy = library.findOwnerByID(ownerId: 111), let book = library.availableBooks().first {
    if library.takeBook(owner: cowboy, book: book) {
        print("\(cowboy.name) has borrowed \(book.title)")
    } else {
        print("Sorry, \(book.title) is not available.")
    }
}
if let cowgirl = library.findOwnerByID(ownerId: 1111), let book = library.availableBooks().first {
    if library.takeBook(owner: cowgirl, book: book) {
        print("\(cowgirl.name) has borrowed \(book.title)")
    } else {
        print("Sorry, \(book.title) is not available.")
    }
}
print("\nBooks Checked Out:")
for owner in library.owners {
    for book in library.booksTakenByOwner(owner: owner) {
        print("\(owner.name) has borrowed \(book.title)")
    }
}
print("\nAvailable Books:")
for book in library.availableBooks() {
    print("\(book.title) by \(book.author)")
}








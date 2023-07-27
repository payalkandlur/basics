import UIKit

struct User {
    let name: String
    let age: Int?
}


let user = User(name: "John", age: 41)

//if let
if let age = user.age {
    print("Age: \(age)") // age is accessible only within this block
} else {
    print("Age nil")
}

//guard let
func getage() {
    guard let age = user.age else { return }
    print("Age: \(age)") // early exit from func
}

getage()
     
//nil coalescing
let agen = user.age ?? 0
print("Age: \(agen)") //default value

//force unwarapping
let agef = user.age!
print("Age: \(agef)")

//optional chaining
var optionalUser: User?
let name = optionalUser?.name ?? "" //the whole object is optional
print(name)

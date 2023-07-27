import UIKit
import Security

struct SomeApp {
    let name: String
    let price: Double
    let users: Int
}


let sampleData = [SomeApp(name: "One", price: 100.99, users: 3),
                  SomeApp(name: "Two", price: 0.0, users: 10),
                  SomeApp(name: "Three", price: 89.89, users: 9),
                  SomeApp(name: "Four", price: 10.99, users: 7)]

//Filter
let freeApp = sampleData.filter({$0.price == 0.0 })
print(freeApp)

//--------
//Map
let appNames = sampleData.map {$0.name}.sorted()
print(appNames)

//--------
//transform the items
let newPrice = sampleData.map {$0.price * 1.5}
print(newPrice)

//--------
//Reduce
let nums = [1,2,3,4,5]
let sum = nums.reduce(100, +) //the left value is the initial value, and after comma whatever you wanna do (the operation)
print(sum)

//--------
//Add users from each app
let totalUsers = sampleData.reduce(0, {$0 + $1.users}) //$0 is one ieteration and $1 another
print(totalUsers)

//--------
//Chaining
let revenue = sampleData.map { $0.price * Double($0.users) }.reduce(0, +)
print(revenue)


//--------
//Compact map - removes nil
let nums1 = [1,2,nil,3,4,nil,5]
let nonNilArr = nums1.compactMap({$0})
print(nonNilArr)

//--------
//FlatMap
let arrOfArrs = [[1,2,3], [4,5,6], [8,9,10]]
print (arrOfArrs.flatMap({$0}))

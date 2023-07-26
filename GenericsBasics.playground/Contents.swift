import UIKit

func gethigherValue<T : Comparable>(value1: T, value2: T) {
    let higher = value1 > value2 ? value1 : value2
    print(higher)
}


gethigherValue(value1: 3, value2: 8) //8
gethigherValue(value1: "b", value2: "a")//b
gethigherValue(value1: Date.now, value2: Date.distantFuture)//distant future
//the type must be similar


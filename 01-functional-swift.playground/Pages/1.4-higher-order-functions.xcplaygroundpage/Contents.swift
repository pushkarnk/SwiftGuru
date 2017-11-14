/*:
 ## Session 1: Functional Swift
 ### 1.4 Higher-order Functions
 Higher order functions are simply functions that operate on other functions by either taking a function as an argument, or returning a function.
 - Be able to use map, filter and reduce
 */

//1. Transform [1,2,3,4,5] into [2,4,6,8,10]
//1.1 Using For Loop
var transformedArray = [Int]()
for number in (1...5) {
    transformedArray.append(number * 2)
}
transformedArray

//1.2 Using Map
let transformed = (1...5).map { $0 * 2 }
transformed

//2. Filter even numbers from [1,2,3,4,5]
//2.1 Using For Loop
var filteredArray = [Int]()
for number in (1...5) {
    if number % 2 == 0 {
        filteredArray.append(number)
    }
}
filteredArray

//2.2 Using Filter
let filtered = (1...5).filter { $0 % 2 == 0 }
filtered

//3. Reduce to sum 15 from [1,2,3,4,5]
//3.1 Using For Loop
var reducedNumber = 0
for number in (1...5) {
    reducedNumber += number
}
reducedNumber

//3.2 Using Reduce
let reduced = (1...5).reduce(0) { (sum, number) -> Int in
    return sum + number
}
reduced
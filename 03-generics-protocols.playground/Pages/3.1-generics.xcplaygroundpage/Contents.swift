/*:
 ## Session 3: Generics and Protocols
 ### 3.2 Generics
 Generic code enables you to write flexible, reusable functions and types that can work with any type
 */

//1. Generic Functions
//1.1 Non-Generic function
func inspect(_ item: Int) {
    print("The value of item is \(item)")
}
inspect(42)

//1.2 Generic function
func inspect<T>(_ item: T) { // Why not just Any
    print("The value of item is \(item)")
}
inspect("String")

//1.3 Generic Constraints
protocol Numeric {
    static func *(lhs: Self, rhs: Self) -> Self
}

extension Int: Numeric {}
extension Float: Numeric {}

func square<T: Numeric>(_ value: T) -> T {
    return value * value
}
let i: Int = 9
square(i)

func square<T: Sequence>(_ value: T) -> [T.Element] where T.Element: Numeric {
    return value.map { $0 * $0 }
}
let ic: [Int] = [9,8,7,6]
square(ic)

//2. Generic Types
//2.1 Non Generic Type
struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}
var intStack = IntStack()
intStack.push(3)
intStack.push(1)
intStack.push(2)
intStack.pop()
intStack

//2.2 Generic Type
struct GenericTypeName<T> {}

//2.3 Covert IntStack to a generic version of stack
struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stringStack = Stack<String>()
stringStack.push("foo")
stringStack.push("bar")
stringStack.push("baz")
stringStack.pop()
stringStack

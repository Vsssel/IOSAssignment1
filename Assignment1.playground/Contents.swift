import UIKit

// task 1
let amount: Double = 500000
let interest: Double = 0.11
let years: Int = 5
var depositAmount: Double = 500000

// in loop i am calculating firstly how much will be deposit amount in one year and to how much it will increase
for year in 1...years {
    depositAmount = depositAmount + (depositAmount * interest)
    let profit = depositAmount - amount
    print("The deposit amount after \(year) years will increase by \(profit) and amount to \(depositAmount) tenge")
}


// task 2
let nums: [Int] = [1, 2, 3, 8, 3, 78, 2, 7, 0, 32, 7 ,9]

// a)

for num in nums {
    if num % 2 == 0 {              // checking if it is even
        print("Even number \(num)")  // printing even numbers
    }
}

// b)

for num in nums {
    if num % 2 == 0 {            // checking if it is even
        continue                 // if it is even skipping this iteration
    }
    print("Odd number \(num)")
}



// task 3
for iteration in  1...10 {
    let randomNum = Int.random(in: 1...10)
    if randomNum == 5 {
        print("It took \(randomNum) iterations to get the number 5.")
        break
    }
}


// task 4

let poleHeight = 10
var start = 0
var days = 0

while start < poleHeight {
    days += 1
    start += 2
    if poleHeight <= start {
        break
    }
    start -= 1
}

print("It will take \(days) days")


// task 5

let result = [
    "Berik Akhmetov": ["3:6", "5:5", "N/A"],
    "Avangard": ["2:1"],
    "Ak Barys": ["3:3", "1:2"]
]

for (opponent, results) in result {
    for result in results {
        print("Game against \(opponent) - \(result)")
    }
}

// task 6

let numbers = [1, 65, 32,7, 23, 8, 3,98,34, 5]
print("Sum : \(getSum(numbers))")

func getSum(_ arr: [Int]) -> Int {
    return arr.reduce(0, {x, y in x + y })
}


// task 7
// 7.1
func isEven(_ num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    }else {
        return false
    }
}

// 7.2
func isDevideByThree(_ num: Int) -> Bool {
    if num % 3 == 0 {
        return true
    }else {
        return false
    }
}

// 7.3
func increasingArray(_ x: Int, _ y: Int) -> [Int] {
    return Array(x...y)
}

// 7.4
let arr = increasingArray(1, 100)

// 7.5
func filterWithoutEvenNum(_ arr: [Int]) -> [Int] {
    return arr.filter({!isEven($0)})
}

// 7.6
func filterWithoutMultiplesOfThree(_ arr: [Int]) -> [Int] {
    return arr.filter({!isDevideByThree($0)})
}

// 7.7
let withoutEven = filterWithoutEvenNum(arr)
let withoutMultiplesOfThree = filterWithoutMultiplesOfThree(withoutEven)

print(withoutMultiplesOfThree)


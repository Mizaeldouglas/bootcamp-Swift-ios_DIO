import UIKit

func soma(n1:Int, n2: Int) -> Int {
	return n1 + n2
}

soma(n1: 20, n2: 80)


func greet(_ person:String, on day: String) -> String {
	return "Olá \(person), Hoje é \(day)"
	
}


greet("Mizael", on: "Sabado")


func calc(scores:[Int]) -> (min: Int, max: Int, sum: Int) {
	
	var min = scores[0]
	var max = scores[0]
	var sum = 0
	
	for score in scores {
		if score > max{
			max = score
		} else if score < min{
			min = score
		}
		sum += score
	}
	return (min, max, sum)
}


let statistics = calc(scores: [10, 5, 100, 50, 1, -5])
print(statistics.0)
print(statistics.1)
print(statistics.2)


func aninhada() -> Int {
	var y = 10
	
	func add() {
		y += 1
	}
	add()
	return y
}


print("cada clique adiciona +1. O resultado é:  \(aninhada())")

func addOne() -> ((Int) -> Int) {
	func addN (number: Int) -> Int {
		return 1 + number
	}
	return addN(number:)
}
var i = addOne()
i(1)


var numbers = [20, 10, 15, 99, 1, 55]

numbers.map({ (number: Int) -> Int in
	let result = 3 * number
	return result
})

let mapped = numbers.map({number in 3 * number})

let sorted = numbers.sorted {$0 > $1}



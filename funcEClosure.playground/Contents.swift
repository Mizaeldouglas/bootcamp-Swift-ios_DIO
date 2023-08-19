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

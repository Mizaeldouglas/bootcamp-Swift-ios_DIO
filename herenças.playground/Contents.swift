import UIKit


class Person {
	var name: String
	var age: Int
	var gender: String
	var color:String
	var maritialStatus: String
	
	init(name: String, age: Int, gender: String, color: String, maritialStatus:String) {
		self.name = name
		self.age = age
		self.color = color
		self.gender = gender
		self.maritialStatus = maritialStatus
	}
	
	func play(sport:String) -> String{
		return sport
	}
	
	func play(instrument: String) ->String  {
		return instrument
	}
}


class Men: Person {
	var robe:String
	
	init(name: String, age: Int, gender: String, color: String, maritialStatus: String, robe: String) {
		self.robe = robe
		super.init(name: name, age: age, gender: gender, color: color, maritialStatus: maritialStatus)
	}
}

let person1 = Men(name: "Mizael", age: 29, gender: "Masc", color: "Branco", maritialStatus: "Casado", robe: "Programação")
print("O nome Da primeira pessoa é: \(person1.name) e tem \(person1.age) anos.")
print("E ele toca o instrumento: \(person1.play(instrument: "Violino")) e ainda joga \(person1.play(sport: "Footbal"))")
print("e seu robe é: \(person1.robe)")

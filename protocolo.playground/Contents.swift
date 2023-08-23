import UIKit

protocol Bird {
	var name:String { get }
	var canFly: Bool { get }
}

protocol Flyable {
	var maximunSpeed: Double {
		get
	}
}

struct Parrot: Bird , Flyable {
	let name:String
	let amplitude:Double
	let frequency: Double
	let canFly: Bool = true
	var maximunSpeed: Double {
		3 * amplitude * frequency
	}
}

let parrot = Parrot(name: "Papagaio", amplitude: 12.0, frequency: 5.0)
print("O \(parrot.name) voa na velocidade máxima de \(parrot.maximunSpeed) km/h")

struct Penguin: Bird {
	let name:String
	let canFly: Bool = false
	
}

let penguin = Penguin(name: "Pinguin")

print("\(penguin.name) é um passoro que voa? \(penguin.canFly ? "Sim!" : "Não!")")

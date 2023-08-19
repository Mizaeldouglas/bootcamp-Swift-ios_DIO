import UIKit

class Residence {
	var numberOfRooms = 5
}

class Person {
	var residence: Residence?
}

let joao = Person()

if let roomCount = joao.residence?.numberOfRooms{
	print("A residencia do João tem \(roomCount) quanto(s)")
}else{
	print("Não foi possivel recuperar o número de quartos.")
}



joao.residence = Residence()

if let roomCount = joao.residence?.numberOfRooms{
	print("A residencia do João tem \(roomCount) quanto(s)")
}else{
	print("Não foi possivel recuperar o número de quartos.")
}

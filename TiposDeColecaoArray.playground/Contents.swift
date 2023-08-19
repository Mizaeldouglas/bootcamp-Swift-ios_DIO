import UIKit

var someInts:[Int] = []

someInts.append(1)
someInts.append(2)
someInts.append(5)
print(someInts)

var list: [String] = []

list.append("Maçã")
print(list)

list += ["Pera","morango","banana","Melancia"]
print(list)

var list2 = [
		"endereco": "Granja Machado ",
		"rua": "Dona Asme Abdala Salibe ",
		"numero": "59 ",
]

for (item,value) in list2 {
	print("\(item): \(value)")
}



var letras = Set<Character>()

for (item) in list {
	print(item)
}


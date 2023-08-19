import UIKit

let individualScores = [75,43,103,87,12]
var teamScore = 0

for score in individualScores{
	if score > 50 {
		teamScore += 3
	} else {
		teamScore += 1
	}
}
print(teamScore)


var optionalName: String?
var greeting = "Olá"
if let name = optionalName{
	greeting = "Olá, \(name)"
}else{
	greeting = "Não passou nada na variavel"
}


let nickname: String? =  nil
let fullname = "Mizael Douglas de Mello"
let informalGreeting = "Oi \(nickname ?? fullname)"

